import 'package:amazon/component/constanst.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:amazon/Model/model.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  late Product p;
  Details({
    Key? key,
    required this.p,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          50,
                        ),
                        bottomRight: Radius.circular(
                          50,
                        ),
                      )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(kDefaultPadding),
                              child: Container(
                                child: Image.asset(
                                  p.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 14,
                                    color: Colors.blue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 14,
                                    color: Colors.black12,
                                  ),
                                ),
                              ]),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                              alignment: Alignment.centerRight,
                              child: Text(
                                p.title,
                                style: GoogleFonts.getFont(
                                  'Almarai',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kDefaultPadding),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                              alignment: Alignment.centerRight,
                              child: Text(
                                'السعر ' + p.price.toString() + '\$',
                                style: GoogleFonts.getFont(
                                  'Almarai',
                                  fontSize: 22,
                                  color: kSecondaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]))),
          Expanded(
            flex: 2,
            child: Container(
              color: kPrimaryColor,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        p.description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Almarai',
                          fontSize: 22,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        p.subTitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Almarai',
                          fontSize: 18,
                          color: kSecondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
