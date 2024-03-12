import 'package:flutter/material.dart';
import 'package:ijato/app/shared/app_images.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppImages.logo,
        width: 150,
      ),
    );
  }
}
