import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class DetailedAppBar extends StatelessWidget {

  const DetailedAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;

    return Container(
      padding: EdgeInsets.only(
        top: padding.top,
      ),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
            onPressed: () => context.pop(),
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border_rounded, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
