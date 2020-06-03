import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    StringBuffer newText = new StringBuffer();

    // TODO check phone region or prefix code
    if (newValue.text.length >= 3 && newValue.text.substring(0, 3) == "+34") {
      _spanishCode(newValue, newText, oldValue, 3);
    } else {
      print("else");
      newText.write(newValue.text);
    }

    return new TextEditingValue(
      text: newText.toString(),
      selection: new TextSelection.collapsed(offset: newText.toString().length),
    );
  }

//  void _spanishCode(TextEditingValue newValue, StringBuffer newText, TextEditingValue oldValue) {
//    if(newValue.text.length > 16){
//      newText.write(newValue.text.replaceAll(" ", ""));
//    }else{
//      newText.write(newValue.text);
//      if (
//          newValue.text.length > oldValue.text.length &&
//          [3, 7, 10,13].contains(newValue.text.length)) {
//        newText.write(" ");
//      }
//    }

  void _spanishCode(TextEditingValue newValue, StringBuffer newText,
      TextEditingValue oldValue, int startFrom) {
    if (newValue.text.length > 16) {
      newText.write(newValue.text.replaceAll(" ", ""));
    } else {
      newText.write(newValue.text);
      if (newValue.text.length > oldValue.text.length &&
          [0, 4, 7, 10].contains(newValue.text.length - startFrom)) {
        newText.write(" ");
      }
    }
  }
}
