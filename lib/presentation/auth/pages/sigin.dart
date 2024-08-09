import 'package:fitquest/common/helper/isDark.dart';
import 'package:fitquest/common/widgets/appbar/basic_app_bar.dart';
import 'package:fitquest/core/configs/assets/appVectors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppBar(
          title: Align(
            child: SvgPicture.asset(
              AppVectors.logo,
              height: 60,
              width: 60,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 80,),
            Align(alignment: Alignment.topCenter ,child: _regText(context, "Register Now")),
            SizedBox(height: 22,),
            Align(
              child: Text("If you need any support click here"),
            )
            ],

        ));
  }

  Widget _regText(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: context.isDarkMode ? Colors.white : Colors.black),
    );
  }
}
