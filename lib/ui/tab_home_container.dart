import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:itgrouptesttask/widget/circle_icon_widget.dart';

class TabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/main_page_background.png"),
          fit: BoxFit.scaleDown,
          alignment: Alignment.bottomCenter,
        )),
        child: new Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.021,
            left: MediaQuery.of(context).size.width * 0.082,
            right: MediaQuery.of(context).size.width * 0.082,
          ),
          child: new Column(
            children: <Widget>[
              new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleIconWidget(Icons.message, "Открытый диалог"),
                  CircleIconWidget(Icons.event_note, "Виртуальная приёмная"),
                  CircleIconWidget(Icons.assessment, "Рейтинг")
                ],
              ),
              new Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.021),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleIconWidget(Icons.equalizer, "Мониторинг цен"),
                    CircleIconWidget(Icons.event_available, "Опросы"),
                    CircleIconWidget(Icons.photo_camera, "Народный контроль")
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.021),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleIconWidget(Icons.local_taxi, "Такси"),
                    CircleIconWidget(Icons.shopping_basket, "Базар"),
                    CircleIconWidget(Icons.filter_3, "3Д-тур")
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.021),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleIconWidget(Icons.person, "Активный гражданин"),
                    CircleIconWidget(Icons.home, "Очередь на жыльё"),
                    CircleIconWidget(Icons.call_end, "Участковые")
                  ],
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.021),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleIconWidget(Icons.monetization_on, "Платежы")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
