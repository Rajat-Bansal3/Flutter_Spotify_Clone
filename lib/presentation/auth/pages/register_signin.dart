import 'package:fitquest/common/helper/isDark.dart';
import 'package:fitquest/common/widgets/appbar/basic_app_bar.dart';
import 'package:fitquest/common/widgets/buttons/basic_app_button.dart';
import 'package:fitquest/core/configs/assets/appImages.dart';
import 'package:fitquest/core/configs/assets/appVectors.dart';
import 'package:fitquest/core/configs/theme/app_color.dart';
import 'package:fitquest/presentation/auth/pages/register.dart';
import 'package:fitquest/presentation/auth/pages/sigin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SignInRegisterPage extends StatelessWidget {
  const SignInRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BasicAppBar(),
          Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppVectors.union)),
          Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppVectors.union2)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.signRegBG)),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40 , vertical: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppVectors.logo),
                      const SizedBox(
                        height: 55,
                      ),
                       Text(
                        "Enjoy listening to music",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 26 , color: context.isDarkMode ? Colors.white : Colors.black),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Text(
                        "Spotify is a proprietary Swedish audio streaming and media services provider",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: context.isDarkMode ? AppColors.grey : AppColors.darkGrey),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: BasicAppButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const SignInPage()));
                              },
                              title: "Signin",
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(
                            flex: 1,
                            child: BasicAppButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const Register()));
                              },
                              title: "Register",
                            ),
                          ),
                        ],
                      )
                    ]),
              )),
        ],
      ),
    );
  }
}
