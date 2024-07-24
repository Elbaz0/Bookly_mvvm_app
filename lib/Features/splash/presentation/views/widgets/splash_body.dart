import 'package:bookly_app/Features/splash/presentation/views/widgets/animation_builder.dart';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:go_router/go_router.dart';

class splash_body extends StatefulWidget {
  const splash_body({super.key});

  @override
  State<splash_body> createState() => _splash_bodyState();
}

class _splash_bodyState extends State<splash_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidanimation;

  @override
  void initState() {
    super.initState();
    init_animation();

    Future.delayed(Duration(seconds: 3), () {
      // Get.to(
      //   () => Home_view(),
      //   transition: Transition.rightToLeft,
      //   duration: Kprimaryduration,
      // );

      GoRouter.of(context).push(app_router.KHome_view);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageData.logo),
          SizedBox(
            height: 5,
          ),
          Animation_builder_widget(
            slidanimation: slidanimation,
          ),
        ],
      ),
    );
  }

  void init_animation() {
    animationController = AnimationController(
      vsync: this,
      duration: (Duration(seconds: 2)),
    );
    slidanimation = Tween(begin: Offset(0, 5), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
}
