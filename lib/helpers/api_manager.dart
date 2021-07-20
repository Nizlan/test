import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task/models/news.dart';

class ApiManager {
  List<News> news = [];
  List nn;
  Future fetchNews() async {
    try {
      var response = await http.get(
          Uri.https("ws-tszh-1c-test.vdgb-soft.ru", "/api/mobile/news/list"));
      final extractedData =
          json.decode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      final newsList = extractedData["data"]["news"] as List;
      for (var n in newsList) {
        var x = Map<String, dynamic>.from(n);
        news.add(new News(
            id: x['id'],
            type: x['type'],
            title: x['title'],
            img: x['img'],
            news_date: x['news_date'],
            news_date_uts: x['news_date_uts'],
            annotation: x['annotation'],
            mobile_url: x['mobile_url']));
      }
    } catch (error) {
      print(error);
    }
  }
}
