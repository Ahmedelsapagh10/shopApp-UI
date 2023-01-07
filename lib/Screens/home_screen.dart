import 'package:amazon/Screens/details.dart';
import 'package:amazon/component/constanst.dart';
import 'package:flutter/material.dart';

import '../component/component.dart';
import '../provider/database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: MyAppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: kDefaultPadding / 2),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70.0),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Card_product(products[index]),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Details(p: products[index])));
                          },
                        );
                      },
                      itemCount: products.length,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
