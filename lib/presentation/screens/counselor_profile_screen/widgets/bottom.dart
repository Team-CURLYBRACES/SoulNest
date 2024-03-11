import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soulnest/data/data.dart';
// import 'package:soulnest/presentation/screens/counselor_profile_screen/test.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/counselorDetailIcons.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.17,
      child: Consumer<Data>(
        builder: (context, data, child) => Row(
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
                        data.therapists[data.currentIndex].imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data.therapists[data.currentIndex].name,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    data.therapists[data.currentIndex].occupation,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CounselorDetailIcons(
                        value: "Rs. 5000",
                        subtitle: "per hour",
                        iconType: Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),
                      ),
                      const CounselorDetailIcons(
                        value: "5 years",
                        iconType: Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        subtitle: "Experiance",
                      ),
                      CounselorDetailIcons(
                        value: data.therapists[data.currentIndex].rating,
                        iconType: const Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        subtitle: "Rating",
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: ListView(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                          const SizedBox(height: 10),
                          const Text(
                            'Schedules',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
