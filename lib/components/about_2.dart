import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';

import '../constants.dart';

class About2 extends StatelessWidget {
  const About2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      decoration: BoxDecoration(color: Color(0XFFf9f8ff)),
      child: Center(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            width: !isMobile(context)
                ? (size.width > 1200 ? 1200 : size.width)
                : size.width,
            child: Row(
              children: <Widget>[
               
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
                  child: Column(
                    mainAxisAlignment: !isMobile(context)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: !isMobile(context)
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: <Widget>[
                      if (isMobile(context))
                        Image.asset(
                           'assets/images/about1.png',
                          height: size.height * 0.3,
                        ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '--- ',
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 14 : 12,
                                fontWeight: FontWeight.w800,
                                color: kTextColor)),
                        TextSpan(
                            text: 'Reporting ',
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 14 : 12,
                                fontWeight: FontWeight.w800,
                                color: kSecondaryColor)),
                      ])),
                      SizedBox(height: 10),
                      Text(
                        'Right people, Right tools',
                        textAlign: isMobile(context)
                            ? TextAlign.center
                            : TextAlign.start,
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: isDesktop(context) ? 26 : 12,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at dictum risus, non suscipit arcu. Quisque aliquam posuere tortor',
                        textAlign: isMobile(context)
                            ? TextAlign.center
                            : TextAlign.start,
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 16 : 12,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nemo quo laboriosam, dolorum ducimus aliquam consequuntur dolor sit amet, consectetur adipisicing elit. Nemo quo laboriosam, dolorum ducimus!',
                        textAlign: isMobile(context)
                            ? TextAlign.center
                            : TextAlign.start,
                        style: TextStyle(
                            fontSize: isDesktop(context) ? 16 : 12,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 30),
                      Wrap(
                        runSpacing: 10,
                        children: <Widget>[
                          MainButton(
                            title: 'READ MORE',
                            color: kPrimaryColor,
                            tapEvent: () {},
                          ),
                          SizedBox(width: 10),
                          MainButton(
                            title: 'CALL NOW!',
                            color: kSecondaryColor,
                            tapEvent: () {},
                          )
                        ],
                      )
                    ],
                  ),
                )),
                 if (isDesktop(context) || isTab(context))
                  Expanded(
                      child: Image.asset(
                     'assets/images/about1.png',
                    height: size.height * 0.7,
                  )),
              ],
            )),
      ),
    );
  }
}
