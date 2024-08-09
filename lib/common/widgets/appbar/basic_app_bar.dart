import 'package:fitquest/common/helper/isDark.dart';
import 'package:fitquest/core/configs/assets/appVectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
   final Widget ? title;
  const BasicAppBar({
    this.title,     
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: title?? const Text(""),
        centerTitle: true,
        leading: IconButton(
          icon: Container(
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.isDarkMode
                    ? Colors.white.withOpacity(0.03)
                    : Colors.black.withOpacity(0.03)),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 15,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
