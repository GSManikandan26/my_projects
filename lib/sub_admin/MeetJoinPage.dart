import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_projects/employee/OfflineMeetIndex.dart';
import 'package:my_projects/employee/OnlineMeetIndex.dart';
import 'OfflineMeetIndex.dart';
import 'OnlineMeetIndex.dart';
import '../color.dart';

class MeetJoinPage extends StatelessWidget {
  const MeetJoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Meeting',style: TextStyle(color: Colors.black),),
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'images/meet.json', // Replace with your animation file path
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                // Show a dialog to ask whether it's an offline or online meeting
                _showMeetingTypeDialog1(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.black), // Replace with the desired icon
                  SizedBox(width: 8), // Adjust the spacing between the icon and text
                  Text('Join as Sub-Admin', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show a dialog to ask whether it's an offline or online meeting
                _showMeetingTypeDialog2(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.black), // Replace with the desired icon
                  SizedBox(width: 8), // Adjust the spacing between the icon and text
                  Text('Join as Customer', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Show a dialog to ask whether it's an offline or online meeting
                _showMeetingTypeDialog3(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
                  ),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.black), // Replace with the desired icon
                  SizedBox(width: 8), // Adjust the spacing between the icon and text
                  Text('Join as Employee', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showMeetingTypeDialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
          ),
          title: const Text('Select Meeting Type'),
          content: const Text('Do you want to join an offline or online meeting?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigate to the MeetIndex screen with the selected meeting type
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnlineMeetIndex(),
                  ),
                );
              },
              child:  const Text('Online Meeting',style: TextStyle(color: Colors.black),),
            ),
            TextButton(
              onPressed: () {
                // Navigate to the MeetIndex screen with the selected meeting type
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OfflineMeetIndex(),
                  ),
                );
              },
              child:  const Text('Offline Meeting',style: TextStyle(color: Colors.black,),),
            ),
          ],
        );
      },
    );
  }
  void _showMeetingTypeDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
          ),
          title: const Text('Select Meeting Type'),
          content: const Text('Do you want to join an offline or online meeting?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigate to the MeetIndex screen with the selected meeting type
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmpOnlineMeetIndex(),
                  ),
                );
              },
              child:  const Text('Online Meeting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
            ),
            TextButton(
              onPressed: () {
                // Navigate to the MeetIndex screen with the selected meeting type
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OfflineMeetIndex(),
                  ),
                );
              },
              child:  const Text('Offline Meeting',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
            ),
          ],
        );
      },
    );
  }
  void _showMeetingTypeDialog3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Adjust the value as needed
          ),
          title: const Text('Select Meeting Type'),
          content: const Text('Do you want to join an offline or online meeting?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Navigate to the MeetIndex screen with the selected meeting type
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmpOnlineMeetIndex(),
                  ),
                );
              },
              child:  const Text('Online Meeting',style: TextStyle(color: Colors.black),),
            ),
            TextButton(
              onPressed: () {
                // Navigate to the MeetIndex screen with the selected meeting type
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmpOfflineMeetIndex(),
                  ),
                );
              },
              child:  const Text('Offline Meeting',style: TextStyle(color: Colors.black,),),
            ),
          ],
        );
      },
    );
  }
}
