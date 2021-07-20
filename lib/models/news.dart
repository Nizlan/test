import 'package:flutter/material.dart';

class News {
  String id;
  int type;
  String title;
  String img;
  String news_date;
  String news_date_uts;
  String annotation;
  String mobile_url;
  News(
      {this.id,
      this.type,
      this.title,
      this.img,
      this.news_date,
      this.news_date_uts,
      this.annotation,
      this.mobile_url});
}
