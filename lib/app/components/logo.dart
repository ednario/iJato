import 'package:flutter/cupertino.dart';

import 'package:routefly/routefly.dart';

import 'package:ijato/app/shared/app_images.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        child: Image.asset(
          AppImages.logo,
        ),
        onPressed: () {
          Routefly.navigate("/login");
        },
      ),
    );
  }
}
