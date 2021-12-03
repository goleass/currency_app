import 'package:cripto/app/models/currency_model.dart';
import 'package:cripto/app/models/ticker_model.dart';
import 'package:cripto/app/repositories/ticker_repository.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;
  late TickerModel _ticker;

  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  Future getTicker(String a) async {
    final ticket = TickerRepository();
    final tickerA = await ticket.fetchTicket(a);

    _ticker = tickerA;
  }

  void convert() async {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'REAL') {
      if (toCurrency.name == 'BTC') {
        await getTicker('BTC');
        returnValue = value * double.parse(_ticker.ticker.high);
      } else if (toCurrency.name == 'LTC') {
        await getTicker('LTC');
        returnValue = value * double.parse(_ticker.ticker.high);
      } else if (toCurrency.name == 'ADA') {
        await getTicker('ADA');
        returnValue = value * double.parse(_ticker.ticker.high);
      } else if (toCurrency.name == 'UNI') {
        await getTicker('UNI');
        returnValue = value * double.parse(_ticker.ticker.high);
      } else if (toCurrency.name == 'USDC') {
        await getTicker('USDC');
        returnValue = value * double.parse(_ticker.ticker.high);
      } else if (toCurrency.name == 'REAL') {
        returnValue = value;
      }
    } else if (fromCurrency.name == 'BTC') {
      if (toCurrency.name == 'REAL') {
        await getTicker('BTC');
        returnValue = value / double.parse(_ticker.ticker.high);
      }
    } else if (fromCurrency.name == 'LTC') {
      if (toCurrency.name == 'REAL') {
        await getTicker('LTC');
        returnValue = value / double.parse(_ticker.ticker.high);
      }
    }else if (fromCurrency.name == 'ADA') {
      if (toCurrency.name == 'REAL') {
        await getTicker('ADA');
        returnValue = value / double.parse(_ticker.ticker.high);
      } 
    }else if (fromCurrency.name == 'UNI') {
      if (toCurrency.name == 'REAL') {
        await getTicker('UNI');
        returnValue = value / double.parse(_ticker.ticker.high);
      } 
    }else if (fromCurrency.name == 'USDC') {
      if (toCurrency.name == 'REAL') {
        await getTicker('USDC');
        returnValue = value / double.parse(_ticker.ticker.high);
      } 
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
