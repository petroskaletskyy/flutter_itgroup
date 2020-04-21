import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {

  final String _text;
  final IconData _icon;

  CircleIconWidget(this._icon, this._text);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new GestureDetector(
        onTap: () {},
        child: new Column(
          children: <Widget>[
            new RawMaterialButton(
              onPressed: () {},
              child: new Icon(
                _icon,
                color: Colors.white,
                size: 35.0,
              ),
              shape: new CircleBorder(),
              elevation: 2.0,
              fillColor: Colors.amber,
              padding: const EdgeInsets.all(15.0),
            ),
            new Padding(
                padding: EdgeInsets.only(
                    top: 25.0 / MediaQuery
                        .of(context)
                        .devicePixelRatio),
                child: new Container(
                  width: 250.0/MediaQuery.of(context).devicePixelRatio,
                  alignment: Alignment.center,
                  child: new Text(
                    _text,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    maxLines: 2,
                    style: new TextStyle(color: Colors.black, fontSize: 14),
                ))),
          ],
        ),
      ),
    );
  }
}