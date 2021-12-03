class TickerModel {
  late Ticker ticker;

  TickerModel({required this.ticker});

  TickerModel.fromJson(Map<String, dynamic> json) {
    ticker =
        (json['ticker'] != null ? new Ticker.fromJson(json['ticker']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ticker != null) {
      data['ticker'] = this.ticker.toJson();
    }
    return data;
  }
}

class Ticker {
  late String high;

  Ticker({required this.high});

  Ticker.fromJson(Map<String, dynamic> json) {
    high = json['high'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['high'] = high;
    return data;
  }
}
