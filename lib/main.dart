import 'package:flutter/material.dart';
import 'package:flutter_ders_odev/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int pageIndex = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: getWidget(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: "Alışveriş"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favori"),
          ],
          currentIndex: pageIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  Widget getWidget() {
    if (pageIndex == 0) {
      return HomePage();
    } else if (pageIndex == 1) {
      return Container(
        child: Text("Home Sayfası"),
      );
    } else if (pageIndex == 2) {
      return Container(
        child: Text("Favori Sayfası"),
      );
    }
    return Container(
      child: Text("Sayfa Bulunamadı"),
    );
  }

  void onItemTapped(int index) {
    pageIndex = index;
    setState(() {});
  }
}
