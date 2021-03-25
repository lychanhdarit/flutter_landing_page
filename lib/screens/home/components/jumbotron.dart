import 'package:flutter/material.dart';
import 'package:flutter_web/components/main_button.dart';
import 'package:flutter_web/responsive.dart';

import '../../../constants.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: size.width,
          decoration: BoxDecoration(color: Color(0XFFf6f9ff)),
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
                              'assets/images/banner.png',
                              height: size.height * 0.3,
                            ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '---- ',
                                style: TextStyle(
                                    fontSize: isDesktop(context) ? 32 : 16,
                                    fontWeight: FontWeight.w800,
                                    color: kTextColor)),
                            TextSpan(
                                text: 'Creativity and Collaboration',
                                style: TextStyle(
                                    fontSize: isDesktop(context) ? 28 : 16,
                                    fontWeight: FontWeight.w800,
                                    color: kPrimaryColor)),
                          ])),
                          Text(
                            'Work Remotely From ',
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 48 : 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Your Home or Places',
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 48 : 28,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Lorem ipsum dolor sit amet, adipisicing elit. Quod corrupti laborum, quasi? Dolor sapiente amet optio harum dolores, voluptate, tempora dolorem fugiat fuga autem .',
                            textAlign: isMobile(context)
                                ? TextAlign.center
                                : TextAlign.start,
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 18 : 12,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 10),
                          Wrap(
                            runSpacing: 10,
                            children: <Widget>[
                              MainButton(
                                title: 'GET STARTED',
                                color: kPrimaryColor,
                                tapEvent: () {},
                              ),
                              SizedBox(width: 10),
                              MainButton(
                                title: 'WATCH VIDEO',
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
                        'assets/images/banner.png',
                        height: size.height * 0.7,
                      ))
                  ],
                )),
          ),
        ),
      
      ],
    );
  }
}
 