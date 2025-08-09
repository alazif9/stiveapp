import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

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
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
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
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "${escapeStringForJson(content)}"
}''';
    return ApiManager.instance.makeApiCall(
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
  }
}

class AtribuirAssistenteCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? assistantId = '',
  }) async {
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "assistant_id": "${escapeStringForJson(assistantId)}"
}''';
    return ApiManager.instance.makeApiCall(
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
  }
}

class ConsultarAndamentoDaThreadCall {
  Future<ApiCallResponse> call({
    String? threadsId = '',
    String? runId = '',
    String? assistantId = '',
  }) async {
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
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
  }
}

class ConsultarMensagensCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
  }) async {
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
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
  }
}

class TranscricaoaudioCall {
  Future<ApiCallResponse> call({
    String? file = '',
  }) async {
    final baseUrl = OpenAINovoGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
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
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
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
    final baseUrl = OpenAIChatGPTGroup.getBaseUrl();

    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-4",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
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
    String? file = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'transcricaoimagem',
      apiUrl: 'https://api.ocr.space/parse/image',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
        'isOverlayRequired': false,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
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
