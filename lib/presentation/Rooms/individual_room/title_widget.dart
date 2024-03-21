import 'package:aagash_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/custom_text_style.dart';

class IndTitleWidget extends StatelessWidget {
  const IndTitleWidget(this.title,this.count,this.showCount);
  final String title,  count;
 final bool showCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 3,
        right: screenWidth * 3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.only(top: 6),
              height: screenHeight * 5.5,
              width: screenWidth * 70,
              child: Row(
                children: [
                  Text(
                    title.tr,
                    style: CustomTextStyles.homeTitleLargeDMSans,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: screenWidth * 2,
                  ),
                  Visibility(
                    visible: showCount,
                    child: Container(
                      height: screenHeight * 4,
                      width: screenWidth * 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.orange,
                      ),
                      child: Center(
                          child: Text(
                            count,
                            style: CustomTextStyles.titleSmallDMSansCount,
                          )),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: screenHeight * 2,
          ),
          FaIcon(
            FontAwesomeIcons.ellipsis,
            size: screenHeight * 2.5,
            color: Theme.of(context).colorScheme.onInverseSurface,
          ),
        ],
      ),
    );

  }
}