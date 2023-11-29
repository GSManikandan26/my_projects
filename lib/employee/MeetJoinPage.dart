import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'OfflineMeetIndex.dart';
import 'OnlineMeetIndex.dart';


class EmployeeMeetJoinPage extends StatelessWidget {
  const EmployeeMeetJoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color(0xff80d6ff);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Meeting',style: TextStyle(color: Colors.black),),
        backgroundColor: primaryColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'images/meet.json', // Replace with your animation file path
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: ElevatedButton(
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
                      Icon(
                        Icons.event, // Replace with the desired icon
                        color: Colors.black,
                      ),
                      SizedBox(width: 8), // Adjust the spacing between icon and text as needed
                      Text(
                        'Select Meeting Type',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
