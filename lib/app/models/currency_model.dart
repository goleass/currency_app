import 'dart:ffi';

import 'package:cripto/app/models/ticker_model.dart';
import 'package:cripto/app/repositories/ticker_repository.dart';

class CurrencyModel {
  final String name;
  final double real;
  final double btc;
  final double ltc;
  final double ada;
  final double uni;
  final double usdc;

  CurrencyModel(
      {required this.name,
      required this.real,
      required this.btc,
      required this.ada,
      required this.ltc,
      required this.uni,
      required this.usdc});

  static List<CurrencyModel> getCurrencies() {

    return <CurrencyModel>[
      CurrencyModel(
          name: 'REAL',
          real: 500,
          btc: 500,
          ltc: 0.15,
          ada: 0.000016,
          usdc: 12.00,
          uni: 20.00),
      CurrencyModel(
          name: 'BTC',
          real: 500,
          btc: 1.0,
          ltc: 0.15,
          ada: 0.000016,
          usdc: 12.00,
          uni: 00.00),
      CurrencyModel(
          name: 'LTC',
          real: 1.0,
          btc: 0.18,
          ltc: 1.0,
          ada: 0.000016,
          usdc: 12.00,
          uni: 00.00),
      CurrencyModel(
          name: 'ADA',
          real: 1.0,
          btc: 0.18,
          ltc: 0.15,
          ada: 1.0,
          usdc: 12.00,
          uni: 00.00),
      CurrencyModel(
          name: 'UNI',
          real: 1.0,
          btc: 0.18,
          ltc: 0.15,
          ada: 0.000016,
          usdc: 12.00,
          uni: 1.0),
      CurrencyModel(
          name: 'USDC',
          real: 1.0,
          btc: 0.18,
          ltc: 0.15,
          ada: 0.000016,
          usdc: 12.00,
          uni: 1.00),
    ];
  }
}
