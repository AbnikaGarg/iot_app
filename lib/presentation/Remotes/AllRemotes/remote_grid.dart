import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../widgets/Remotes Widgets/remote_card.dart';

class RemoteGrid extends StatelessWidget {
  const RemoteGrid(this.devices);
  final List<RemoteCard> devices;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: screenHeight * 2,left: 10,right: 10),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 2,
      ///  padding: EdgeInsets.only(left: 12,right: 12),
        children: List.generate(devices.length, (index) {
          return Center(child: devices[index]);
        }),
      ),
    );
  }
}