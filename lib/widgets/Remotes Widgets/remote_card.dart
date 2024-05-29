import 'package:iot_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class RemoteCard extends StatelessWidget {

  RemoteCard(
      {Key? key,
        required this.deviceName,
        required this.roomName,
        required this.imgUrl,
        required this.onPressed
      }
      ) : super(key:key);

  final String deviceName;
  final String roomName;
  final String imgUrl;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    AutoHeight au = AutoHeight(context);
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80,
        width: screenWidth * 44,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(15),
          border:  GradientBoxBorder(
            gradient: LinearGradient(colors: [appTheme.black900,
              appTheme.orange900,]),
            width: 2,
          ),
        ),
        child: Column(
          children: [
            // SizedBox(
            //   height: screenHeight * 1,
            // ),
            // CircleAvatar(
            //   radius: 50,
            //   ///Change it to image if need
            //   child: Center(child: Icon(Icons.adb_outlined,color: Colors.white,size: 40,),),
            // ),
            SizedBox(
              height: screenHeight * 1,
            ),
            ///Device name
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(deviceName,style: CustomTextStyles.homeTitleLargeDMSans,maxLines: 1,overflow: TextOverflow.fade,)
            ),
            SizedBox(
              height: screenHeight * 1,
            ),
            ///Room name
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(roomName,style: CustomTextStyles.homeTitleSmallDMSans,maxLines: 1,overflow: TextOverflow.fade,)
            )
          ],
        ),
      ),
    );
  }
}
