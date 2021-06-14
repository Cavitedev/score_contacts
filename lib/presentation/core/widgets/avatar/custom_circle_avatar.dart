import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:scorecontacts/core/app_localization.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String? image;
  final Color? backgroundColor;
  final double radius;
  final String name;
  final Widget? child;

  const CustomCircleAvatar({
    required this.image,
    required this.name,
    this.backgroundColor,
    this.child,
    this.radius = 20,
    Key? key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCircleAvatar(context);
  }

  CircleAvatar _buildCircleAvatar(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor ?? Colors.purple[200],
      foregroundImage: image != null ? NetworkImage(image!) : null,
      onForegroundImageError: image != null
          ? (_, ex) {
              FlushbarHelper.createError(
                      message: AppLocalization.of(context)
                          .translate("error_load_contact_image", args: [
                        name,
                      ]),
                      duration: const Duration(seconds: 8))
                  .show(context);
            }
          : null,
      child: child,
    );
  }

}
