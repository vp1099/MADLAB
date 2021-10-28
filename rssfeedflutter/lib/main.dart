import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rssfeedflutter/news_item.dart';
import 'package:webfeed/webfeed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("RSS Feed")),
            body: Container(child: RssFeedList())));
  }
}

class RssFeedList extends StatefulWidget {
  RssFeedList({Key? key}) : super(key: key);

  @override
  _RssFeedListState createState() => _RssFeedListState();
}

class _RssFeedListState extends State<RssFeedList> {
  late List<NewsItem> news;
  static const String FEED_URL =
      'https://www.nasa.gov/rss/dyn/breaking_news.rss';
  Future<List<NewsItem>> fetchNews() async {
    List<NewsItem> itemList = [];
    final response = await http.get(Uri.parse(FEED_URL));
    if (response.statusCode == 200) {
      var data = RssFeed.parse(response.body);
      // for (final item in data.items) {
      //   //   NewsItem temp =
      //   //       new NewsItem(title: item.title, description: item.description);
      //   //   itemList.add(temp);
      // }
      data.items?.forEach((item) {
        NewsItem temp = NewsItem(
            title: item.title ?? "", description: item.description ?? "");
        itemList.add(temp);
      });
      return itemList;
    } else {
      throw Exception('Failed to Load Feed');
    }
  }

  void returnNews() async {
    news = await fetchNews();
  }

  @override
  void initState() {
    super.initState();
    returnNews();
  }

  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(news[index].title));
            }));
  }
}
