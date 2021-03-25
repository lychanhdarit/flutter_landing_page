import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';

import '../constants.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double maxWidth = size.width;
    if (maxWidth > 1200) {
      maxWidth = 1200;
    }
    return Container(
      width: size.width,
      padding: EdgeInsets.fromLTRB(0, 60, 0, 60),
      decoration: BoxDecoration(color: Color(0XFFf9f8ff)),
      child: Center(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
            padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
            width: !isMobile(context) ? maxWidth : size.width,
            child: Column(
              mainAxisAlignment: !isMobile(context)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              crossAxisAlignment: !isMobile(context)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Our Services ',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: isDesktop(context) ? 16 : 13,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Our Special Services',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: isDesktop(context) ? 28 : 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 14 : 10,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(height: 25),
                !isMobile(context)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(width: (maxWidth / 3.3), child: ItemHome()),
                          Container(width: (maxWidth / 3.3), child: ItemHome()),
                          Container(width: (maxWidth / 3.3), child: ItemHome()),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(width: (maxWidth), child: ItemHome()),
                          SizedBox(height: 20),
                          Container(width: (maxWidth), child: ItemHome()),
                          SizedBox(height: 20),
                          Container(width: (maxWidth), child: ItemHome()),
                          SizedBox(height: 20),
                        ],
                      )
              ],
            )),
      ),
    );
  }
}

class ItemHome extends StatelessWidget {
  const ItemHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      borderRadius: BorderRadius.circular(15),
      shadowColor: Color(0XFFf3f3f3),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.check_box_rounded,
              color: kTextColor,
            ),
            SizedBox(height: 10),
            Text('Fundemental nature of creativity and collaboration',
                style: TextStyle(
                    fontSize: isDesktop(context) ? 20 : 14,
                    fontWeight: FontWeight.w800,
                    color: kPrimaryColor)),
            SizedBox(height: 10),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla neque quam, maxi ut accumsan ut, posuere sit Lorem ipsum quam, maximus ut accumsan.')
          ],
        ),
      ),
    );
  }
}
