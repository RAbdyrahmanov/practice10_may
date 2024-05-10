import 'package:translator/translator.dart';
import 'dart:io';

void main() async {
  final GoogleTranslator googleTranslator = GoogleTranslator();
  String fromLang = 'en';
  String toLang = 'ru';

  while (true) {
    print('Vyberite Lang:');
    print('1.en');
    print('2.ru');
    print('3.Exit');

    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    if (choice == 1) {
      fromLang = 'en';
    } else if (choice == 2) {
      fromLang = "ru";
    } else if (choice == 3) {
      break;
    } else {
      print('Nepravilnyi vvod. Vvedite chislo ot 1 do 3');
    }
    print('Vyberite Lang na kotoryi hotite perevesti:');
    print('1.en');
    print('2.ru');
    choice = int.tryParse(stdin.readLineSync() ?? '');
    if (choice == 1) {
  
      toLang = 'en';
    } else if (choice == 2) {
      toLang = 'ru';
    } else {
      print('Nepravilnyi vvod. Vvedite chislo ot 1 do 3');
      continue;
    }
    print(' vvedite text dlya perevoda:');
    String text = stdin.readLineSync() ?? '';

    Translation? translation =
        await googleTranslator.translate(text, from: 'en', to:'ru');
    if (translation != null) {
      print('result:${translation.text}');
    
    }
    print('Prodoljit ? (Y/N)');
    String endChoice = stdin.readLineSync() ?? '';
    if (endChoice != 'Y') {
      break;
    }
  }
}
