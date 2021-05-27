import 'package:flutter/services.dart';
import 'package:scorecontacts/domain/mention/mention.dart';

class MentionInputFormatter extends TextInputFormatter{

  final Map<String, Mention> mentions;

  MentionInputFormatter({required this.mentions});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // TODO: implement formatEditUpdate
    return newValue;
  }

}