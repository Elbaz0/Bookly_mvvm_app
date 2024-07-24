import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class custem_app_bar extends StatelessWidget {
  const custem_app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(
            imageData.logo,
            width: 80,
            height: 60,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(app_router.searech_veiw_);
            },
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.search,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
