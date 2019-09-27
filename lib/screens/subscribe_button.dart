import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/app_color.dart';

class SubscribeButton extends StatelessWidget {
  var emailImage = "assets/email.png";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.blue1, AppColors.blue2],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: AppColors.blue3.withOpacity(.3),
                  offset: Offset(0, 8),
                  blurRadius: 8.0)
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Subscribe',
                    style: TextStyle(
                        color: AppColors.white1,
                        fontSize: 16,
                        letterSpacing: 1),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  // Icon(
                  //   Icons.email,
                  //   color: AppColors.white1,
                  //   size: 20.0,
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
