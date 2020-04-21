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
  final _maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (***) ***-**-**', filter: {"*": RegExp(r'[0-9]')});
  final String _buttonLabel = "Получить SMS-код";
  final String _haveCodeLabel = "У меня уже есть SMS-код";
  final String _smartLabel = "Smart";
  final String _turkistanLabel = "Turkistan";
  final String _qazLabel = "QAZ";
  final String _kazLabel = "КАЗ";
  final String _rusLabel = "РУС";
  final String _engLabel = "ENG";

  int _checkedPosition = 2;

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
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                      top: MediaQuery.of(context).size.height * 0.40,
                    ),
                    child: new TextFormField(
                      inputFormatters: [
                        _maskFormatter,
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
                    top: MediaQuery.of(context).size.height * 0.036,
                    left: MediaQuery.of(context).size.width * 0.11,
                    right: MediaQuery.of(context).size.width * 0.11,
                  ),
                  child: new SizedBox(
                    width: MediaQuery.of(context).size.width * 0.78,
                    height: MediaQuery.of(context).size.height * 0.046,
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
                            _buttonLabel,
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
                    top: MediaQuery.of(context).size.height * 0.018,
                  ),
                  child: new GestureDetector(
                    onTap: () {},
                    child: new Text(
                      _haveCodeLabel,
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
                    top: MediaQuery.of(context).size.height * 0.08,
                    left: MediaQuery.of(context).size.width * 0.14,
                    right: MediaQuery.of(context).size.width * 0.14,
                  ),
                  child: new Container(
                    width: MediaQuery.of(context).size.width * 0.71,
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: new Column(
                      children: <Widget>[
                        new FittedBox(
                          child: new Text(
                            _smartLabel.toUpperCase(),
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 100.0),
                          ),
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.center,
                        ),
                        new FittedBox(
                          child: new Text(
                            _turkistanLabel.toUpperCase(),
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                fontSize: 100.0),
                          ),
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    left: MediaQuery.of(context).size.width * 0.14,
                    right: MediaQuery.of(context).size.width * 0.14,
                  ),
                  child: new Container(
                    child: new Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkedPosition = 0;
                            });
                          },
                          child: new Text(
                            _qazLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: _checkedPosition == 0
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkedPosition = 1;
                            });
                          },
                          child: new Text(
                            _kazLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: _checkedPosition == 1
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkedPosition = 2;
                            });
                          },
                          child: new Text(
                            _rusLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: _checkedPosition == 2
                                  ? Color.fromRGBO(255, 240, 0, 1.0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                        new GestureDetector(
                          onTap: () {
                            setState(() {
                              _checkedPosition = 3;
                            });
                          },
                          child: new Text(
                            _engLabel.toUpperCase(),
                            style: new TextStyle(
                              fontSize: 17,
                              color: _checkedPosition == 3
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
