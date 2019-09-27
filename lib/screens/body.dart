import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/app_color.dart';
import 'package:flutter_responsive/utils/large_screen.dart';
import 'package:flutter_responsive/utils/responsive_widget.dart';
import 'package:flutter_responsive/utils/small_screen.dart';

class BodyScreen extends StatelessWidget {
  String src =
      'https://www.infoxeron.com/img/home-process/pngs/planning-illustraton.png';

  Widget _buildBackgroundImage() {
    return FractionallySizedBox(
      alignment: Alignment.centerRight,
      widthFactor: 0.6,
      child: Image.network(src),
    );
  }

  //Adds welcome text
  Widget _addWelcomeText() {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft, //text aligned to left side
      widthFactor: .4, //covers about half of the screen
      child: Padding(
        padding: EdgeInsets.only(left: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: AppColors.blue4,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'Say hello to ',
                  style: TextStyle(fontSize: 60, color: AppColors.blue4),
                  children: [
                    TextSpan(
                        text: 'World',
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis nisi, voluptatum harum ea expedita blanditiis excepturi pariatur dicta consequatur iusto!'),
            ),
            SizedBox(
              height: 40,
            ), //Give some spacing
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreen(),
      smallScreen: SmallScreen(),
    );
  }
}
