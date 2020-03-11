import 'dart:convert';

import 'package:http/http.dart' as http;

const apiKey = '69DFE96C-92AA-46FD-9447-9C929E8475D3';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String crypto, String currency) async {
    String url =
        'https://rest.coinapi.io/v1/exchangerate/$crypto/$currency?apikey=$apiKey';
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

//      return jsonDecode(data);
      print(jsonDecode(data)['rate']);
      return jsonDecode(data)['rate'];
    } else {
      print(response.statusCode);
    }
    print(jsonDecode(response.body)['rate']);
    return jsonDecode(response.body)['rate'];
  }
}
