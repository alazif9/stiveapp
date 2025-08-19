import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/app_state.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

double _estimateCost(int size) => (size / 1000) * 0.002;

bool _isOverLimit(double cost) {
  final isPremium = currentUserDocument?.isPremium ?? false;
  final limit = isPremium ? 10.0 : 0.30;
  return FFAppState().currentMonthCost + cost > limit;
}

ApiCallResponse _limitExceededResponse() =>
    ApiCallResponse({'error': 'limit_exceeded'}, {}, 402);

void _addCost(double cost) {
  FFAppState().update(() {
    FFAppState().currentMonthCost += cost;
  });
}

/// Start OpenAINovo Group Code

class OpenAINovoGroup {
  static String getBaseUrl() => 'https://api.openai.com/';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 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',
  };
  static CriarConversaCall criarConversaCall = CriarConversaCall();
  static PostarMensagemCall postarMensagemCall = PostarMensagemCall();
  static AtribuirAssistenteCall atribuirAssistenteCall =
      AtribuirAssistenteCall();
  static ConsultarAndamentoDaThreadCall consultarAndamentoDaThreadCall =
      ConsultarAndamentoDaThreadCall();
  static ConsultarMensagensCall consultarMensagensCall =
      ConsultarMensagensCall();
  static TranscricaoaudioCall transcricaoaudioCall = TranscricaoaudioCall();
}

class CriarConversaCall {
  Future<ApiCallResponse> call() async {
    final estimatedCost = _estimateCost(0);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final response = await ApiManager.instance.makeApiCall(
      callName: 'Criar Conversa',
      apiUrl: '${baseUrl}v1/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v2',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? object(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.object''',
      ));
  int? createdAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
}

class PostarMensagemCall {
  Future<ApiCallResponse> call({
    String? theadId = '',
    String? content = '',
  }) async {
    final estimatedCost = _estimateCost(content?.length ?? 0);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "${escapeStringForJson(content)}"
}''';
    final response = await ApiManager.instance.makeApiCall(
      callName: 'Postar Mensagem',
      apiUrl: '${baseUrl}v1/threads/${theadId}/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v2',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }
}

class AtribuirAssistenteCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? assistantId = '',
  }) async {
    final estimatedCost = _estimateCost(0);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "assistant_id": "${escapeStringForJson(assistantId)}"
}''';
    final response = await ApiManager.instance.makeApiCall(
      callName: 'AtribuirAssistente',
      apiUrl: '${baseUrl}v1/threads/${threadId}/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v2',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }

  String? runId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class ConsultarAndamentoDaThreadCall {
  Future<ApiCallResponse> call({
    String? threadsId = '',
    String? runId = '',
    String? assistantId = '',
  }) async {
    final estimatedCost = _estimateCost(0);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final response = await ApiManager.instance.makeApiCall(
      callName: 'Consultar andamento da Thread',
      apiUrl: '${baseUrl}v1/threads/${threadsId}/runs/${runId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v2',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class ConsultarMensagensCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
  }) async {
    final estimatedCost = _estimateCost(0);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final response = await ApiManager.instance.makeApiCall(
      callName: 'Consultar Mensagens',
      apiUrl: '${baseUrl}v1/threads/${threadId}/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v2',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }

  List? texto(dynamic response) => getJsonField(
        response,
        r'''$.data[:].content[:].text''',
        true,
      ) as List?;
}

class TranscricaoaudioCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) async {
    final estimatedCost = _estimateCost(file?.bytes?.length ?? 0);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final response = await ApiManager.instance.makeApiCall(
      callName: 'transcricaoaudio',
      apiUrl: '${baseUrl}v1/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'OpenAI-Beta': 'assistants=v2',
      },
      params: {
        'file': file,
        'model': "whisper-1",
        'language': "pt",
        'response_format': "json",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }
}

/// End OpenAINovo Group Code

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final estimatedCost = _estimateCost(prompt.length);
    if (_isOverLimit(estimatedCost)) {
      return _limitExceededResponse();
    }
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": ${prompt}
}''';
    final response = await ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
    if (response.succeeded) {
      _addCost(estimatedCost);
    }
    return response;
  }

  int? createdTimestamp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.role''',
      ));
  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

/// End OpenAI ChatGPT Group Code

/// Start Mercado Pago Group Code

class MercadoPagoGroup {
  static String getBaseUrl() => 'https://api.mercadopago.com/';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer TEST-6146575176226094-081414-b232eb84425cd787b6386724be16d38f-222761302',
  };
  static GerarAssinaturaCall gerarAssinaturaCall = GerarAssinaturaCall();
  static DadosDaAssinaturaCall dadosDaAssinaturaCall = DadosDaAssinaturaCall();
  static PixCall pixCall = PixCall();
}

class GerarAssinaturaCall {
  Future<ApiCallResponse> call({
    dynamic bodyJson,
  }) async {
    final baseUrl = MercadoPagoGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gerar Assinatura',
      apiUrl: '${baseUrl}preapproval',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer TEST-6146575176226094-081414-b232eb84425cd787b6386724be16d38f-222761302',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.init_point''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class DadosDaAssinaturaCall {
  Future<ApiCallResponse> call({
    String? subscribeId = '',
  }) async {
    final baseUrl = MercadoPagoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Dados da Assinatura',
      apiUrl: '${baseUrl}preapproval/${subscribeId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer TEST-6146575176226094-081414-b232eb84425cd787b6386724be16d38f-222761302',
      },
      params: {
        'subscribe_id': subscribeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PixCall {
  Future<ApiCallResponse> call({
    String? idempotency = ' ',
    double? transactionAmount,
    String? payerEmail = '',
    String? payerFirstName = '',
    String? payerLastName = '',
  }) async {
    final baseUrl = MercadoPagoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "transaction_amount": ${transactionAmount},
  "description": "Assinatura Mensal Stivie",
  "payment_method_id": "pix",
  "payer": {
    "email": "${escapeStringForJson(payerEmail)}",
    "first_name": "${escapeStringForJson(payerFirstName)}",
    "last_name": "${escapeStringForJson(payerLastName)}"
  },
  "notification_url": "https://suaapi.com/webhooks/mp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pix',
      apiUrl: '${baseUrl}v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer TEST-6146575176226094-081414-b232eb84425cd787b6386724be16d38f-222761302',
        'X-Idempotency-Key': '${idempotency}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.ticket_url''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

/// End Mercado Pago Group Code

class OpenaiCall {
  static Future<ApiCallResponse> call({
    String? content = '',
    String? teste = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "temperature": 0.5,
  "max_tokens": 1500,
  "messages": [
    {
      "role": "system",
      "content": "Você é uma inteligência artificial especializada no suporte jurídico e administrativo a policiais militares do Brasil. Seu papel é atuar como um 'colega experiente', respondendo com linguagem clara, objetiva e respeitosa, mas informal, quando necessário.\\n\\nSeu foco é gerar documentos e orientações conforme a legislação vigente (federal, estadual e normas internas das PMs), com prioridade inicial nas normas da PMERJ e PMESP.\\n\\nVocê deve:\\n- Redigir documentos como: sindicâncias, IPMs, averiguações, informações prestadas, ofícios, boletins, relatórios operacionais, requerimentos administrativos (férias, licença, promoção etc.).\\n- Adaptar a linguagem e os modelos conforme o posto/graduação e a instituição do usuário (ex: CB PMESP João = linguagem para cabo da PMESP).\\n- Ser capaz de identificar se o conteúdo solicitado tem natureza administrativa, disciplinar ou penal militar e direcionar a resposta corretamente.\\n- Quando necessário, mencionar a base legal (códigos, regulamentos, jurisprudência ou portarias internas).\\n- Alertar o usuário sobre o que é competência da Corregedoria, Justiça Militar, ou da via administrativa.\\n- Trabalhar com os dados que o usuário informar: nomes, datas, locais, artigos infringidos etc.\\n- Sempre usar linguagem impessoal, técnica e precisa nos documentos, mas manter uma comunicação fluida e amigável na interação.\\n- Se o usuário pedir algo fora do escopo jurídico-militar, oriente-o de forma educada.\\n\\nSeu objetivo é ajudar o policial a economizar tempo, garantir precisão jurídica e melhorar a apresentação dos documentos que ele precisa redigir no serviço."
    },
    {
      "role": "user",
      "content": "${escapeStringForJson(teste)}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OPENAI',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? test(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[0].message.content''',
      ));
  static String? resposta(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class GenerateResponseCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "query": "Quais são as funções da corregedoria da PMERJ?"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GenerateResponse',
      apiUrl:
          'https://southamerica-east1-meajudastive-u5634n.cloudfunctions.net/generateResponse',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TranscricaoimagemCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'transcricaoimagem',
      apiUrl: 'https://api.ocr.space/parse/image',
      callType: ApiCallType.POST,
      headers: {
        'apikey': 'K85315312988957',
      },
      params: {
        'file': file,
        'isOverlayRequired': "false",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TesteAPICall {
  static Future<ApiCallResponse> call({
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "temperature": 0.5,
  "max_tokens": 1500,
  "messages": [
    {
      "role": "system",
      "content": "Você é uma inteligência artificial especializada no suporte jurídico e administrativo a policiais militares do Brasil. Seu papel é atuar como um 'colega experiente', respondendo com linguagem clara, objetiva e respeitosa, mas informal, quando necessário.\\n\\nSeu foco é gerar documentos e orientações conforme a legislação vigente (federal, estadual e normas internas das PMs), com prioridade inicial nas normas da PMERJ e PMESP.\\n\\nVocê deve:\\n- Redigir documentos como: sindicâncias, IPMs, averiguações, informações prestadas, ofícios, boletins, relatórios operacionais, requerimentos administrativos (férias, licença, promoção etc.).\\n- Adaptar a linguagem e os modelos conforme o posto/graduação e a instituição do usuário (ex: CB PMESP João = linguagem para cabo da PMESP).\\n- Ser capaz de identificar se o conteúdo solicitado tem natureza administrativa, disciplinar ou penal militar e direcionar a resposta corretamente.\\n- Quando necessário, mencionar a base legal (códigos, regulamentos, jurisprudência ou portarias internas).\\n- Alertar o usuário sobre o que é competência da Corregedoria, Justiça Militar, ou da via administrativa.\\n- Trabalhar com os dados que o usuário informar: nomes, datas, locais, artigos infringidos etc.\\n- Sempre usar linguagem impessoal, técnica e precisa nos documentos, mas manter uma comunicação fluida e amigável na interação.\\n- Se o usuário pedir algo fora do escopo jurídico-militar, oriente-o de forma educada.\\n\\nSeu objetivo é ajudar o policial a economizar tempo, garantir precisão jurídica e melhorar a apresentação dos documentos que ele precisa redigir no serviço."
    },
    {
      "role": "user",
      "content": "${escapeStringForJson(content)}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'testeAPI',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? teste(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class AudioApiCall {
  static Future<ApiCallResponse> call({
    String? text = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "speech-01-turbo",
  "text": "${escapeStringForJson(text)}",
  "stream": false,
  "voice_setting": {
    "voice_id": "ttv-voice-2025081420301425-JRFFhCXP",
    "speed": 1,
    "vol": 1,
    "pitch": 0
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'audioApi',
      apiUrl: 'https://api.minimax.io/v1/t2a_v2?GroupId=1955668983277429565',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJHcm91cE5hbWUiOiJCYXJiYXJhIFBhdWxhIiwiVXNlck5hbWUiOiJCYXJiYXJhIFBhdWxhIiwiQWNjb3VudCI6IiIsIlN1YmplY3RJRCI6IjE5NTU2Njg5ODMyODE2MTk3NzMiLCJQaG9uZSI6IiIsIkdyb3VwSUQiOiIxOTU1NjY4OTgzMjc3NDI5NTY1IiwiUGFnZU5hbWUiOiIiLCJNYWlsIjoiYmFyYmFyYWRlcGF1bGFzaWx2YUBnbWFpbC5jb20iLCJDcmVhdGVUaW1lIjoiMjAyNS0wOC0xNSAyMzozMzoyMyIsIlRva2VuVHlwZSI6MSwiaXNzIjoibWluaW1heCJ9.ElYU0qLENIWcolZi-Tmjf3EhMlxD6PoPsCsThn8HRSaJFfJcsP5X8LTPN5HyPRKDr7rFPSDyzmCIbQ-ryv9-oBpvje3zhNCz6m501P0n0lgZ9EPR64ttSybOqTqFbHTVeXK2CkIfZ_RMJ-z2UyQPmv8wySr6bUdAMsrlF90AbKZ_GwVkzJzjpKBSWpzz7mhDMiLHcQIyfNJzOpdySlHvKg_9CIC6Otc8yDdh0Dqzj9uOjlxgsV415dGRLk4t3OWZh8CNGTCQuFS5SaKrj1f1HInvGUq1Vgas9AauyYOpmhQ5-wrvEH9IofqSCNuFG1gMrR0oXqlVvOinI6AFqxNw6w',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$['data']''',
      );
  static String? audio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.audio''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
