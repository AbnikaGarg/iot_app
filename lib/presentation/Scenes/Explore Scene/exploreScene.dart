import 'package:google_fonts/google_fonts.dart';
import 'package:iot_application1/core/app_export.dart';
import 'package:iot_application1/widgets/Scenes_Widgets/explore_scene_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../All Scenes/all_screens_list.dart';

class ExploreScenes extends StatelessWidget {
  List exploreList = [
    {"title": "Title1", "des": " This is explore"},
    {"title": "Title1", "des": " This is explore"},
    {"title": "Title1", "des": " This is explore"}
  ];

  @override
  Widget build(BuildContext context) {
    AutoHeight au = AutoHeight(context);
    late Map<String, dynamic> arguments =
        Get.arguments ?? {"showBackButton": false};
    bool toShowBackButton = arguments["showBackButton"];
    return DefaultTabController(
      ///Change ot dynamic length as per the api
      length: 2,

      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
           floatingActionButton: FloatingActionButton(
            onPressed: (){
                Get.toNamed(AppRoutes.createScene);
            },
          child: Icon(Icons.add,color: PrimaryColors().pureWhite,),
        ),
          appBar: AppBar(
           // backgroundColor: Theme.of(context).colorScheme.background,
            // leading: Visibility(
            //   visible: toShowBackButton,
            //   child: GestureDetector(
            //     child: Icon(Icons.arrow_back),
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //edit, delete device scene,schduele
            // title orange
            //ac speaker
            //create scene dropdown 
            //   ),
            // ),
            centerTitle: false,
            title: Text(
              "Explore",
              style: CustomTextStyles.homeTitleLarge2DMSans,
            ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              padding: EdgeInsets.symmetric(horizontal: 12),
              dividerColor: Colors.transparent,

              indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
              // indicator: BoxDecoration(
              //   borderRadius: BorderRadius.circular(15), // Creates border
              //   //color: PrimaryColors().orangeNormal,
              //   // border: GradientBoxBorder(
              //   //   gradient: LinearGradient(colors: [appTheme.black900,
              //   //     appTheme.orange900,]),
              //   //   width: 1,
              //   // ),
              // ),
              labelStyle: GoogleFonts.plusJakartaSans(
                  fontSize: 16, fontWeight: FontWeight.w600),
              //labelColor: PrimaryColors().pureWhite,
              ///Pass the Tab Here Dynamically as per the length into a loop
              tabs: [
                Tab(text: "Scene"),
                Tab(
                  text: "Schedule",
                ),
              ],
            ),
          ),

          ///Create new Remote button
         
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TabBarView(
              children: [
                // ListView.builder(
                //   itemCount: exploreList.length,
                //   itemBuilder: (context, index) {
                //     return Padding(
                //       padding: EdgeInsets.only(
                //         bottom: 10,
                //       ),
                //       child: ExploreSceneCard(
                //           title: exploreList[index]["title"],
                //           subTitle: exploreList[index]["des"]),
                //     );
                //   },
                // ),
                // ListView.builder(
                //   itemCount: exploreList.length,
                //   itemBuilder: (context, index) {
                //     return Padding(
                //       padding: EdgeInsets.only(bottom: 10),
                //       child: ExploreSceneCard(
                //           title: exploreList[index]["title"],
                //           subTitle: exploreList[index]["des"]),
                //     );
                //   },
                // )
                 AllScreensList("Evening", "Everyday | 08:15 AM - 9:00 AM",3),
            AllScreensList("Evening", "Everyday | 08:15 AM - 9:00 AM",4),
              ],
            ),
          )),
    );
    // return Scaffold(
    //   backgroundColor: Theme.of(context).colorScheme.background,
    //   body: Column(
    //     children: [
    //       SizedBox(
    //         height: screenHeight * 5,
    //       ),
    //       Expanded(
    //           child: ListView.builder(
    //         itemCount: exploreList.length,
    //         itemBuilder: (context, index) {
    //           return Padding(
    //             padding: EdgeInsets.only(bottom: 10),
    //             child: ExploreSceneCard(
    //                 title: exploreList[index]["title"],
    //                 subTitle: exploreList[index]["des"]),
    //           );
    //         },
    //       ))
    //     ],
    //   ),
    // );
  }
}
