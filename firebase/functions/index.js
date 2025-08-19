const functions = require("firebase-functions");
const admin = require("firebase-admin");
const axios = require("axios");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("users/" + user.uid);
});

exports.verifySubscriptions = functions.pubsub
  .schedule("every 24 hours")
  .onRun(async (context) => {
    const db = admin.firestore();
    const usersSnap = await db.collection("users").get();
    const mpToken =
      process.env.MP_ACCESS_TOKEN ||
      (functions.config().mercadopago || {}).access_token;
    if (!mpToken) {
      console.error("Mercado Pago access token not configured");
      return null;
    }
    const inactiveStatuses = ["cancelled", "paused", "expired"]; // statuses that deactivate account
    await Promise.all(
      usersSnap.docs.map(async (userDoc) => {
        const pagamentosSnap = await userDoc.ref
          .collection("pagamentos")
          .get();
        for (const pagamentoDoc of pagamentosSnap.docs) {
          const data = pagamentoDoc.data();
          const mpId = data.id_mercado_pago;
          if (!mpId) continue;
          try {
            const response = await axios.get(
              `https://api.mercadopago.com/preapproval/${mpId}`,
              {
                headers: { Authorization: `Bearer ${mpToken}` },
              }
            );
            const status = response.data.status;
            await pagamentoDoc.ref.update({ status });
            if (inactiveStatuses.includes(status)) {
              await admin.auth().updateUser(userDoc.id, { disabled: true });
              const token =
                userDoc.get("fcmToken") || userDoc.get("fcm_token");
              if (token) {
                await admin.messaging().send({
                  token,
                  notification: {
                    title: "Assinatura expirada",
                    body: "Sua assinatura expirou e sua conta foi desativada.",
                  },
                });
              }
            }
          } catch (error) {
            console.error(
              "Erro ao verificar assinatura para usuário",
              userDoc.id,
              error.message
            );
          }
        }
      })
    );
    return null;
  });
