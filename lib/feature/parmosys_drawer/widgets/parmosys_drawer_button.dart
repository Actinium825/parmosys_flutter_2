import 'package:flutter/material.dart';
import 'package:parmosys_flutter/utils/const.dart';
import 'package:parmosys_flutter/utils/styles.dart';
import 'package:parmosys_flutter/widgets/spacings.dart';

class ParmosysDrawerButton extends StatelessWidget {
  const ParmosysDrawerButton({
    required this.label,
    required this.icon,
    this.iconColor = Colors.white,
    this.suffix,
    this.onTap,
    super.key,
  });

  final String label;
  final IconData icon;
  final Color iconColor;
  final Widget? suffix;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(drawerButtonsRadius);
    return Card(
      color: drawerButtonsBackgroundColor,
      elevation: drawerButtonsElevation,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Padding(
          padding: drawerButtonsPadding,
          child: Row(
            children: [
              Icon(
                icon,
                color: iconColor,
                size: drawerButtonsIconSize,
              ),
              const HorizontalSpace(space: 8.0),
              Text(
                label,
                style: TextStyles.medium,
              ),
              if (suffix != null) ...[
                const Spacer(),
                suffix!,
              ]
            ],
          ),
        ),
      ),
    );
  }
}
