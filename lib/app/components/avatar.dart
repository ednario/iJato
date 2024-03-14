import 'package:flutter/cupertino.dart';

import 'package:routefly/routefly.dart';

import 'package:ijato/app/shared/app_images.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        child: Image.asset(
          AppImages.avatar,
        ),
        onPressed: () {
          Routefly.navigate("/home");
        },
      ),
    );
  }
}
