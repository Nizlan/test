import 'package:flutter/material.dart';
import 'package:task/helpers/api_manager.dart';

import 'models/news.dart';

class MainScreen extends StatefulWidget {
  // const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  News news;
  void getNews() async {
    news = await ApiManager().fetchNews();
  }

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero).then((value) => getNews());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
