import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_projects/sub_admin/MeetJoinPage.dart';
import 'color.dart';
import 'employee/MeetJoinPage.dart';
import 'forms/conditions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Index',style: TextStyle(color: Colors.black),),
          backgroundColor: primaryColor,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 0.9,
            padding: const EdgeInsets.all(12.0),
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 350),
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Get.to(MeetJoinPage());
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              size: 48.0,
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(height: 14.0),
                            const Text(
                              'Toolbox Meeting',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 350),
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Get.to(ConditionsForm());
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fact_check,
                          size: 48.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(height: 14.0),
                        const Text(
                          'Checklist',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      );
  }
}
