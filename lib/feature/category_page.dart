import 'package:flutter/material.dart';
import 'package:parmosys_flutter/gen/assets.gen.dart';
import 'package:parmosys_flutter/utils/const.dart';
import 'package:parmosys_flutter/utils/strings.dart';
import 'package:parmosys_flutter/utils/styles.dart';
import 'package:parmosys_flutter/widgets/spacings.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  static const route = '/category-page';

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(searchTextRadius);
    final extraBold = TextStyles.extraBold;

    return Scaffold(
      backgroundColor: categoryPageBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actionsIconTheme: const IconThemeData(color: Colors.white),
      ),
      endDrawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: categoryPagePadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryPageHeader.first,
                  style: extraBold,
                ),
                Row(
                  children: [
                    Text(
                      categoryPageHeader[1],
                      style: extraBold,
                    ),
                    const Icon(
                      Icons.location_on_rounded,
                      color: locationButtonColor,
                      size: locationIconSize,
                    ),
                  ],
                ),
                const VerticalSpace(space: 20.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: borderRadius,
                  ),
                  height: searchTextHeight,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: hintTextLabel,
                      hintStyle: TextStyles.light,
                      border: OutlineInputBorder(borderRadius: borderRadius),
                      contentPadding: hintTextPadding,
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(space: 80.0),
          Image.asset(Assets.png.lancerSide.path),
        ],
      ),
    );
  }
}
