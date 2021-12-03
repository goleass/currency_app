// import 'dart:math';

// import 'package:cripto/app/controllers/home_controller.dart';
// import 'package:cripto/app/models/currency_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   final TextEditingController toText = TextEditingController();
//   final TextEditingController fromText = TextEditingController();
//   final homeController = HomeController(toText: toText, fromText: fromText);

//   test('Deve converter de real para dolar com vírgula', () {
//     toText.text = '2,0';

//     homeController.convert();

//     expect(fromText.text, '0.36');
//   });

//   test('Deve converter de real para dolar', () {
//     toText.text = '2.0';

//     homeController.convert();

//     expect(fromText.text, '0.36');
//   });

//   test('Deve converter de dolar para real', () {
//     toText.text = '1.0';

//     homeController.toCurrency = CurrencyModel(
//         name: 'Dolar', real: 5.65, dolar: 1, euro: 0.85, bitcoin: 0.000088);

//     homeController.fromCurrency = CurrencyModel(
//         name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016);
//     homeController.convert();

//     expect(fromText.text, '5.65');
//   });
// }
