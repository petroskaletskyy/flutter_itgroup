import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itgrouptesttask/ui/main_page.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/services.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (***) ***-**-**', filter: {"*": RegExp(r'[0-9]')});
  final String buttonLabel = "Получить SMS-код";
  final String haveCodeLabel = "У меня уже есть SMS-код";
  final String smartLabel = "Smart";
  final String turkistanLabel = "Turkistan";
  final String qazLabel = "QAZ";
  final String kazLabel = "КАЗ";
  final String rusLabel = "РУС";
  final String engLabel = "ENG";

  int checkedPosition = 2;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_camel.png"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Color.fromRGBO(255, 213, 72, 0.4).withOpacity(0.8),
                  BlendMode.dstATop),
            ),
          ),
          child: new Container(
            alignment: Alignment.bottomCenter,
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Padding(
                    padding: EdgeInsets.only(
                      left: 60.0 / MediaQuery.of(context).devicePixelRatio,
                      right: 60.0 / MediaQuery.of(context).devicePixelRatio,
                      top: 700.0 / MediaQuery.of(context).devicePixelRatio,
                    ),
                    child: new TextFormField(
                      inputFormatters: [
                        maskFormatter,
                      ],
                      keyboardType: TextInputType.number,
                      style: new TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                          labelText: "+7 (***) ***-**-**",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          enabledBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                  style: BorderStyle.solid))),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 90.0 / MediaQuery.of(context).devicePixelRatio,
                    left: 145.0 / MediaQuery.of(context).devicePixelRatio,
                    right: 145.0 / MediaQuery.of(context).devicePixelRatio,
                  ),
                  child: new SizedBox(
                    width: 1047 / MediaQuery.of(context).devicePixelRatio,
                    height: 117 / MediaQuery.of(context).devicePixelRatio,
                    child: new RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(255, 207, 42, 1.0),
                                Color.fromRGBO(255, 159, 8, 1.0)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            buttonLabel,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 46 / MediaQuery.of(context).devicePixelRatio),
                  child: new GestureDetector(
                    onTap: () {},
                    child: new Text(
                      haveCodeLabel,
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed,
                        decorationColor: Colors.white,
                        decorationThickness: 0.8,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 160.0 / MediaQuery.of(context).devicePixelRatio,
                    left: 189.0 / MediaQuery.of(context).devicePixelRatio,
                    right: 189.0 / MediaQuery.of(context).devicePixelRatio,
                  ),
                  child: new Text(
                    smartLabel.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 74,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0 / MediaQuery.of(context).devicePixelRatio,
                    left: 189.0 / MediaQuery.of(context).devicePixelRatio,
                    right: 189.0 / MediaQuery.of(context).devicePixelRatio,
                  ),
                  child: new Text(
                    turkistanLabel.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 190 / MediaQuery.of(context).devicePixelRatio,
                    left: 190 / MediaQuery.of(context).devicePixelRatio,
                    right: 190 / MediaQuery.of(context).devicePixelRatio,
                  ),
                  child: new Container(
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              checkedPosition = 0;
                            });
                          },
                          child: new Text(
                            qazLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: checkedPosition == 0
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              checkedPosition = 1;
                            });
                          },
                          child: new Text(
                            kazLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: checkedPosition == 1
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              checkedPosition = 2;
                            });
                          },
                          child: new Text(
                            rusLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: checkedPosition == 2
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              checkedPosition = 3;
                            });
                          },
                          child: new Text(
                            engLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: checkedPosition == 3
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
