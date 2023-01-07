import 'package:amazon/Model/model.dart';
import 'package:amazon/component/constanst.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar MyAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Text(
      'مرحباً بكم بمتجرنا',
      style: GoogleFonts.getFont(
        'Almarai',
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Icon(Icons.menu),
    ],
  );
}

// Widget bodyOfHome() {
//   return SafeArea(
//     bottom: false,
//     child: Column(
//       children: [
//         SizedBox(height: kDefaultPadding / 2),
//         Expanded(
//           child: Stack(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 70.0),
//                 decoration: BoxDecoration(
//                   color: kBackgroundColor,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(40),
//                     topRight: Radius.circular(40),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

Widget Card_product(Product p) {
  return Padding(
    padding: const EdgeInsets.all(kDefaultPadding / 2),
    child: Container(
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 25,
            offset: Offset(0, 5),
            color: Colors.black12,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      height: 166,
      width: double.infinity,
      child: Stack(children: [
        Container(
          alignment: Alignment.topLeft,
          child: Image.asset(p.image),
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  p.title,
                  style: GoogleFonts.getFont('Almarai', fontSize: 18),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  p.subTitle,
                  style: GoogleFonts.getFont('Almarai', fontSize: 18),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  'السعر: ' + p.price.toString() + ' \$',
                  style: GoogleFonts.getFont('Almarai', fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}
