import 'package:iot_application1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../widgets/Remotes Widgets/remote_small_card.dart';

class AddNewRemote extends StatelessWidget {
  //const AddNewRemote({super.key});

  ///Bellow is just for representation/usage please connect the api and create a list of cards before passing it to the grid view bellow
  List<RemoteSmallCard> devices = [
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
    RemoteSmallCard(deviceName: "Air Conditioner"),
  ];

  @override
  Widget build(BuildContext context) {

    AutoHeight au = AutoHeight(context);

    return Scaffold( appBar: AppBar(
        title: Text(
          "New Remote",
          style: CustomTextStyles.homeTitleLarge2DMSans,
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ///Top app bar
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(left: screenWidth * 3),
          //       child: GestureDetector(
          //         child: Icon(Icons.arrow_back),
          //         onTap: (){
          //           Navigator.pop(context);
          //         },
          //       ),
          //     ),
          //     Text("New Remote",style: CustomTextStyles.homeTitleLarge2DMSans,),
          //     // Padding(
          //     //   padding: EdgeInsets.only(right: screenWidth * 3),
          //     //   child:FaIcon(FontAwesomeIcons.ellipsis),
          //     // )
          //     Container()
          //   ],
          // ),
          // SizedBox(
          //   height: screenHeight * 3,
          // ),
          ///List View of all remotes
          // GridView.count(
          //   shrinkWrap: true,
          //   crossAxisCount: 3,
          //   //mainAxisSpacing: screenHeight * 0.5,
          //   padding: EdgeInsets.only(left: screenWidth * 2,right: screenWidth * 2),
          //   children: List.generate(8, (index) {
          //     return Center(child: devices[index]);
          //   }),
          // ),
        ],
      ),
    );
  }
}


