import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CreateNewScene extends StatefulWidget {
  @override
  State<CreateNewScene> createState() => _CreateNewSceneState();
}

class _CreateNewSceneState extends State<CreateNewScene> {
  List devices = [
    {
      "type": "heading",
      "label": "Living Room",
      "children": [
        {"type": "item", "label": "AC"},
        {"type": "item", "label": "Light"},
        {"type": "item", "label": "Fan"}
      ]
    },
    {
      "type": "heading",
      "label": "Bedroom",
      "children": [
        {"type": "item", "label": "Curtains"},
        {"type": "item", "label": "Tube Light"},
        {"type": "item", "label": "Led"}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    AutoHeight au = AutoHeight(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          "Create Scene",
          style: CustomTextStyles.homeTitleLarge2DMSans,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: screenHeight * 5,
          // ),
          // ///Top app bar
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
          //     Text("Create Scene",style: CustomTextStyles.homeTitleLarge2DMSans,),
          //     // Padding(
          //     //   padding: EdgeInsets.only(right: screenWidth * 3),
          //     //   child:FaIcon(FontAwesomeIcons.ellipsis),
          //     // )
          //     Container()
          //   ],
          // ),
          ///Top scheduling button
          SizedBox(
            height: screenHeight * 2,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 255, 255, 0.1),
                Color.fromRGBO(255, 255, 255, 0.2),
                Color.fromRGBO(255, 255, 255, 0.1),
                Color.fromRGBO(255, 255, 255, 0.04),
              ]),
            ),
            child: TextField(
              style: GoogleFonts.plusJakartaSans(color: Colors.white),
              readOnly: true,
              onTap: () {
                 _showMultiSelectBottomSheet(context);
              },
              decoration: InputDecoration(
                hintText: 'Select devices',
                
                hintStyle: GoogleFonts.plusJakartaSans(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.3), width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.3), width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                isDense: true,
                suffixIcon: Icon(Icons.arrow_drop_down)
                // prefixIcon: SvgPicture.asset(
                //   "assets/icons/user.svg",
                //   height: 10,
                //   fit: BoxFit.scaleDown,
                // ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 2,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: GestureDetector(
              onTap: () {
               
              },
              child: Text(
                "Schedule".tr,
                style: CustomTextStyles.homeTitleLargeDMSans,
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Text(
              "How often do you want it to be?".tr,
              style: CustomTextStyles.homeTitleSmallDMSans,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: screenHeight * 2,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 3, right: screenWidth * 3),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  ///Just dummy - Please customize it as per the functionality - I don't know the usability for the bellow widgets
                  children: [
                    customChips(context, "Everyday"),
                    SizedBox(
                      width: screenWidth * 1,
                    ),
                    customChips(context, "Week Day"),
                    SizedBox(
                      width: screenWidth * 1,
                    ),
                    customChips(context, "Custom Date"),
                  ],
                ),
              )),
          SizedBox(
            height: screenHeight * 2,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 3, right: screenWidth * 3),
              child: Divider(
                color: Colors.grey,
              )),
          SizedBox(
            height: screenHeight * 1,
          ),

          ///Calendar scheduling
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Text(
              "Schedule".tr,
              style: CustomTextStyles.homeTitleLargeDMSans,
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: screenHeight * 1,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Text(
              "Select the desired dates".tr,
              style: CustomTextStyles.homeTitleSmallDMSans,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: screenHeight * 1,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: GestureDetector(
              onTap: () {
                // SfDateRangePicker(
                //
                // );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Select the dates".tr,
                    style: CustomTextStyles.homeTitleLargeDMSans,
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                  GestureDetector(
                    ///Please write down the sate management functionality bellow by using the particular controller
                    onTap: () => showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    ),
                    child: Container(
                      width: screenWidth * 25,
                      height: screenHeight * 5,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(10),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(colors: [
                            appTheme.black900,
                            appTheme.orange900,
                          ]),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Date here",
                          style: CustomTextStyles.homeTitleSmallDMSans,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 2,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 3, right: screenWidth * 3),
              child: Divider(
                color: Colors.grey,
              )),

          ///Time scheduling
          SizedBox(
            height: screenHeight * 1,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Text(
              "Working time".tr,
              style: CustomTextStyles.homeTitleLargeDMSans,
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: screenHeight * 1,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Text(
              "Select the desired time interval".tr,
              style: CustomTextStyles.homeTitleSmallDMSans,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: screenHeight * 2,
          ),

          ///On time
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Time ON".tr,
                  style: CustomTextStyles.homeTitleLargeDMSans,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
                GestureDetector(
                  ///Please write down the sate management functionality bellow by using the particular controller
                  onTap: () => showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ),
                  child: Container(
                    width: screenWidth * 25,
                    height: screenHeight * 5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(10),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [
                          appTheme.black900,
                          appTheme.orange900,
                        ]),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Time here",
                        style: CustomTextStyles.homeTitleSmallDMSans,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 1,
          ),

          ///Off time
          Padding(
            padding:
                EdgeInsets.only(left: screenWidth * 3, right: screenWidth * 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Time OFF".tr,
                  style: CustomTextStyles.homeTitleLargeDMSans,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
                GestureDetector(
                  ///Please write down the sate management functionality bellow by using the particular controller
                  onTap: () => showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ),
                  child: Container(
                    width: screenWidth * 25,
                    height: screenHeight * 5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(10),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [
                          appTheme.black900,
                          appTheme.orange900,
                        ]),
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Time here",
                        style: CustomTextStyles.homeTitleSmallDMSans,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showMultiSelectBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: appTheme.blueGray900,
              borderRadius: BorderRadius.circular(22)),
          padding: EdgeInsets.all(20),
          child: StatefulBuilder(builder: (BuildContext context,
              StateSetter setState /*You can rename this!*/) {
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Select Devies',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  _buildMultiSelectList(setState),
                  SizedBox(height: 20),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  //   child: Text('Confirm'),
                  // ),
                ],
              ),
            );
          }),
        );
      },
    );
  }

  List<String> _selectedItems = [];

  Widget _buildMultiSelectList(setState) {
    List<Widget> widgets = [];
    for (var section in devices) {
      if (section['type'] == 'heading') {
        widgets.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              section['label'],
              style: CustomTextStyles.homeTitleLargeDMSans,
            ),
          ),
        );
        for (var child in section['children']) {
          widgets.add(
            CheckboxListTile(
              title: Text(
                child['label'],
                style: CustomTextStyles.homeTitleSmallDMSans,
              ),
              value: _selectedItems.contains(child['label']),
              onChanged: (bool? value) {
                setState(() {
                  if (value != null && value) {
                    _selectedItems.add(child['label']);
                  } else {
                    _selectedItems.remove(child['label']);
                  }
                });
              },
            ),
          );
        }
      }
    }
    return Column(
      children: widgets,
    );
  }
}

Widget customChips(BuildContext context, String name) {
  return Container(
    height: screenHeight * 6,
    width: screenWidth * 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Theme.of(context).colorScheme.secondaryContainer,
    ),
    child: Center(
      child: Text(
        name,
        style: CustomTextStyles.createHomeTitleLargeDMSans,
      ),
    ),
  );
}
