import 'package:get/get.dart';

class Languages extends Translations {
  // TODO: implement keys
  // Map<String, Map<String, String>> get keys => throw UnimplementedError();
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': "What is your name?",
          'name': 'Prasiddha',
        },
        'np_NP': {
          'message': 'तिम्रो नाम के हो',
          'name': 'प्रसिद्ध',
        }
      };
}
