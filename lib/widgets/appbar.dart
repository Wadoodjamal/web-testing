import 'package:flutter/material.dart';

import '../configs/configs.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(double.infinity, AppDimensions.normalize(20));
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: AppDimensions.normalize(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu',
                style: AppText.b1.cl(Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down,
                size: AppDimensions.normalize(12),
                color: Colors.black,
              ),
              Space.x,
              Container(
                decoration: BoxDecoration(
                  borderRadius: UIProps.radiusL,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                height: AppDimensions.normalize(15),
                padding: EdgeInsets.all(
                  AppDimensions.normalize(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.link,
                      color: Colors.black,
                      size: AppDimensions.normalize(9),
                    ),
                    Space.xf(3),
                    Text(
                      'Copy Link',
                      style: AppText.b2.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
