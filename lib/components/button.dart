import 'package:coffeshop/theme/color.dart';
import 'package:flutter/cupertino.dart';

class CustomElevation extends StatelessWidget {
  final Widget child;
  final double height;

  CustomElevation({required this.child, required this.height})
      : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(this.height / 2)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.shadowColor,
            blurRadius: height / 5,
            offset: Offset(0, height / 5),
          ),
        ],
      ),
      child: this.child,
    );
  }
}
