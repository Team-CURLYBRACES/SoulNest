import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:soulnest/presentation/common/profile_screen_header.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profile_screen_profile_deatails.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profile_screen_stress_overview.dart';
import 'package:soulnest/presentation/screens/profile_screen/widgets/profle_screen_sheduled_sessions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _id = '';
  List<double> _stressPercentage =
      List<double>.filled(7, 0.0); // Variable to store stress percentage

  @override
  void initState() {
    super.initState();
    _loadID();
    getStress();
  }

  @override
  Widget build(BuildContext context) {
    log(_id);
    return Scaffold(
      body: Column(
        children: [
          const SmallHeader(
            title: "Profile",
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                ProfileDetails(),
                SizedBox(
                  height: 30,
                ),
                SheduledSessions(),
                SizedBox(
                  height: 30,
                ),
                StressOverView(
                  stressPercentages: _stressPercentage,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _loadID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('id');
    log('Token: $token');
    if (token != null) {
      setState(() {
        _id = token;
      });
    }
  }

  Future<void> getStress() async {
    Map<String, String> data = {
      "token": "d7dcde95-a30d-4cd7-98b0-9824ad435726",
    };
    String jsonData = jsonEncode(data);
    String url =
        'https://a42d-112-134-149-196.ngrok-free.app/users/get_stress_info/';
    final res = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonData,
    );

    if (res.statusCode == 200) {
      // If the request is successful, parse the response body
      Map<String, dynamic> data = json.decode(res.body);
      List<dynamic> stressData = data['stress_data'];
      log("message: $stressData");
      setState(() {
        _stressPercentage = stressData.cast<double>();
        log("Getting percentages: $_stressPercentage");
      });
    } else {
      // Handle error
      log('Failed to get stress information: ${res.statusCode}');
    }
  }
}
