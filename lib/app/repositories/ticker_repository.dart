import 'package:cripto/app/models/ticker_model.dart';
import 'package:dio/dio.dart';

class TickerRepository {
  late Dio dio = Dio();

  TickerRepository([Dio? client]) : dio = client ?? Dio();

  Future<TickerModel> fetchTicket(String v) async {
    final response = await dio.get('https://www.mercadobitcoin.net/api/$v/ticker');
    final ticket = TickerModel.fromJson(response.data);

    return ticket;
  }
}
