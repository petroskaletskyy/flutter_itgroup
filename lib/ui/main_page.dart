import 'package:flutter/material.dart';
import 'package:itgrouptesttask/ui/tab_home_container.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{

  String titleLabel = "Smart Turkistan";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: new Scaffold(
            appBar: new AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(254, 206, 41, 1.0),
                      Color.fromRGBO(230, 150, 0, 1.0)
                    ],
                  ),
                ),
              ),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.phone),),
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.photo_camera),),
                  Tab(icon: Icon(Icons.notifications_active),)
                ],
              ),
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: new Text(
                titleLabel,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              leading: new Padding(
                padding: EdgeInsets.only(
                    left: 56.0 / MediaQuery.of(context).devicePixelRatio),
                child: new PopupMenuButton<Menu>(
                  itemBuilder: (BuildContext context) {
                    return menus.map((Menu menu) {
                      return PopupMenuItem<Menu>(
                        value: menu,
                        child: new Text(menu.title),
                      );
                    }).toList();
                  },
                  child: new Icon(
                    Icons.menu,
                    size: 26.0,
                  ),
                ),
              ),
              actions: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(
                      right: 64.0 / MediaQuery.of(context).devicePixelRatio),
                  child: new PopupMenuButton<Option>(
                    itemBuilder: (BuildContext context) {
                      return options.map((Option option) {
                        return PopupMenuItem<Option>(
                          value: option,
                          child: Text(option.title),
                        );
                      }).toList();
                    },
                    child: new Icon(
                      Icons.share,
                      size: 26.0,
                    ),
                  ),
                ),
              ],
            ),
            body: TabBarView(
              children: <Widget>[
                Icon(Icons.phone),
                TabContainer(),
                Icon(Icons.photo_camera),
                Icon(Icons.notifications_active),
              ],
            ),
          ),
        )
    );
  }
}

class Option {
  final String title;

  Option(this.title);
}

List<Option> options = [
      Option("Option 1"),
      Option("Option 2"),
      Option("Option 3"),
      Option("Option 4"),
      Option("Option 5"),
      Option("Option 6")
];

class Menu {
  final String title;

  Menu(this.title);
}

List<Menu> menus = [
  Menu("Menu 1"),
  Menu("Menu 2"),
  Menu("Menu 3"),
  Menu("Menu 4")
];