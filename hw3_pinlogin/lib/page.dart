import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_Pin extends StatefulWidget {
  const Page_Pin({super.key});

  @override
  State<Page_Pin> createState() => _Page_PinState();
}

class _Page_PinState extends State<Page_Pin> {
  var _numpin = ['_', '_', '_', '_', '_', '_'];

  Widget build_button(String _num, String _textnum) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            for (int i = 0; i < _numpin.length; i++) {
              if (_numpin[i] == '_') {
                _numpin[i] = _num;
                break;
              }
            }
          });
        },
        child: Container(
          height: 70.0,
          width: 70.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.0),
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _num,
                style: GoogleFonts.notoSansThai(),
              ),
              Text(
                _textnum,
                style: GoogleFonts.notoSansThai(),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Expanded(
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.security,
                  size: 60.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "PIN LOGIN",
                  style: GoogleFonts.notoSansThai(fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _numpin[0],
                          style: GoogleFonts.notoSansThai(fontSize: 20.0),
                        ),
                        Text(
                          _numpin[1],
                          style: GoogleFonts.notoSansThai(fontSize: 20.0),
                        ),
                        Text(
                          _numpin[2],
                          style: GoogleFonts.notoSansThai(fontSize: 20.0),
                        ),
                        Text(
                          _numpin[3],
                          style: GoogleFonts.notoSansThai(fontSize: 20.0),
                        ),
                        Text(
                          _numpin[4],
                          style: GoogleFonts.notoSansThai(fontSize: 20.0),
                        ),
                        Text(
                          _numpin[5],
                          style: GoogleFonts.notoSansThai(fontSize: 20.0),
                        )
                      ]),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  build_button('1', 'one'),
                  build_button('2', 'two'),
                  build_button('3', 'three'),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  build_button('4', 'four'),
                  build_button('5', 'five'),
                  build_button('6', 'six'),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  build_button('7', 'seven'),
                  build_button('8', 'eight'),
                  build_button('9', 'nine'),
                ]),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 10.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 10.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                _numpin[0] = "_";
                                _numpin[1] = "_";
                                _numpin[2] = "_";
                                _numpin[3] = "_";
                                _numpin[4] = "_";
                                _numpin[5] = "_";
                              });
                            },
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              child: Icon(
                                Icons.close,
                                size: 30.0,
                              ),
                            )),
                      ),
                      build_button('0', 'zero'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 10.0),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                for (int i = 5; i <= _numpin.length; --i) {
                                  if (_numpin[i] != '_') {
                                    _numpin[i] = '_';
                                    break;
                                  }
                                }
                              });
                            },
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              child: Icon(
                                Icons.backspace,
                                size: 30.0,
                              ),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
