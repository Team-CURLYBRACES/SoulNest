import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/counselorDetailIcons.dart';
// import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/date_picker.dart';
// import 'package:date_picker_timeline/date_picker_timeline.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.17,
      child: Row(
        children: [
          SizedBox(
            width: size.width,
            child: Column(
              children: [
                Container(
                  width: size.width * 0.35,
                  height: size.width * 0.35,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: const Color.fromRGBO(226, 238, 246, 1),
                      width: 5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/Counselor.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mrs. Wasana Dissanayake',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Specialist on Sound Therapy',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.7),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 35),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CounselorDetailIcons(
                      value: "Rs. 5000",
                      subtitle: "per hour",
                      iconType: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                    ),
                    CounselorDetailIcons(
                      value: "5 years",
                      iconType: Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                      subtitle: "Experiance",
                    ),
                    CounselorDetailIcons(
                      value: "4.5",
                      iconType: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      subtitle: "Rating",
                    ),
                    SizedBox(width: 5),
                  ],
                ),
                Column(
                  children: [
                    ListView(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      shrinkWrap: true,
                      children: [
                        const Text(
                          'Description',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'MBBS (UK), MRCP(UK), Board Certified in Int. Medicine (U.S.A). The founder of Healthy Life Allergists Clinic.',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            leadingDistribution: TextLeadingDistribution.even,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Schedules',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // DatePicker(
                        //   DateTime(
                        //     DateTime.february,
                        //   ),
                        //   height: 100,
                        //   width: 80,
                        //   selectedTextColor:
                        //       const Color.fromARGB(255, 255, 255, 255),
                        //   selectionColor: const Color.fromRGBO(28, 146, 202, 1),
                        // )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
