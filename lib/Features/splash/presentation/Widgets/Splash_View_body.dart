import 'package:booly_app/Features/Home/presentation/view/home_view.dart';
import 'package:booly_app/core/utils/assets.dart';
import 'package:booly_app/core/utils/router_app.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    Future.delayed(Duration(seconds: 4), () {
      GoRouter.of(context).push(RouterApp.KHomeView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AssetsData.logo),
              const SizedBox(height: 4),
              AnimatedBuilder(
                  animation: animation,
                  builder: (context, _) {
                    return SlideTransition(
                      position: animation,
                      child: Text(
                        'Read for free book',
                        textAlign: TextAlign.center,
                      ),
                    );
                  }),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Center(child: CircularProgressIndicator()),
              SizedBox(height: 20),
              AnimatedBuilder(
                  animation: animation,
                  builder: (context, _) {
                    return SlideTransition(
                        position: animation,
                        child: Text('Programmer :Mohammed Noman'));
                  }),
            ],
          ),
          flex: 1,
        )
      ],
    );
  }
}
