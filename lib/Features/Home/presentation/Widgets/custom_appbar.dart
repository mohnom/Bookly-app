import 'package:booly_app/core/utils/assets.dart';
import 'package:booly_app/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Custom_AppBar extends StatelessWidget {
  const Custom_AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 100,
          ),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(RouterApp.KsearshView);
              },
              icon: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
    );
  }
}
