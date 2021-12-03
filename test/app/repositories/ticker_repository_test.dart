import 'package:cripto/app/models/ticker_model.dart';
import 'package:cripto/app/repositories/ticker_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final ticket = TickerRepository();

  test('Buscar', () async {
    final ticket = TickerRepository();

    final tickerBTC = await ticket.fetchTicket('BTC');    
    final tickerLTC = await ticket.fetchTicket('LTC');    
    final tickerADA = await ticket.fetchTicket('ADA');    
    final tickerUNI = await ticket.fetchTicket('UNI');    
    final tickerUSDC = await ticket.fetchTicket('USDC');    


  });
}
