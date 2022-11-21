import 'package:flutter/material.dart';
import 'package:polines_news/article.dart';
import 'package:polines_news/article_web.dart';
import 'package:polines_news/detail_page.dart';
import 'package:polines_news/styles.dart';
import 'package:polines_news/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: primaryColor,
            secondary: secondaryColor,
            onPrimary: Colors.black),
        textTheme: myTextTheme,
        appBarTheme: AppBarTheme(elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: secondaryColor,
                onPrimary: Colors.white,
                textStyle: const TextStyle(),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0))))),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.teal,
      ),
      initialRoute: NewsListPage.routeName,
      routes: {
        NewsListPage.routeName: (context) => NewsListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
              article: ModalRoute.of(context)?.settings.arguments as Article,
            ),
        ArticleWebView.routeName: (context) => ArticleWebView(
            url: ModalRoute.of(context)?.settings.arguments as String)
      },
    );
  }
}
