import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/app_color.dart';
import 'package:flutter_responsive/utils/responsive_widget.dart';

class HeaderScreen extends StatelessWidget {
  Widget _buildLogo() {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            gradient: LinearGradient(
                colors: [AppColors.blue1, AppColors.blue2],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft),
          ),
          child: Center(
            child: Text(
              'H',
              style: TextStyle(fontSize: 30, color: AppColors.white1),
            ),
          ),
        ),
        //give some space between logo box and title
        SizedBox(
          width: 16,
        ),
        Text(
          'Flutter Hello',
          style: TextStyle(fontSize: 26),
        )
      ],
    );
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          width: 120,
          height: 40,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.blue1, AppColors.blue2],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: AppColors.blue3.withOpacity(0.3),
                    offset: Offset(0, 8), //Shadow starts at x=0, y=8
                    blurRadius: 8)
              ]),
          child: Material(
            color: Colors.transparent,
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                    color: AppColors.white1, fontSize: 18, letterSpacing: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Builds navigation list for header
  List<Widget> getLinksListing() {
    var links = ["Home", "Say Hello", "Contact Us"];
    return links.map((link) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(
          link,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );
    }).toList();
  }

  //Builds navigation links at the right top of landing page
  Widget _buildHeaderLinks(context) {
    if (!ResponsiveWidget.isSmallScreen(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: getLinksListing()..add(_buildLoginButton()),
      );
    } else {
      return Icon(
        Icons.menu,
        size: 20.0,
      );
    }
  }

  Widget _buildHeader(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[_buildLogo(), _buildHeaderLinks(context)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: _buildHeader(context),
    );
  }
}
