import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:soulnest/models/data.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/shedule.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/counselorDetailIcons.dart';
import 'package:soulnest/providers/doctors_provider.dart';

class AllContent extends StatelessWidget {
  const AllContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.17,
      child: Consumer<DoctorsProvider>(
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
                    child: data.doctors[data.currentIndex].image.isNotEmpty
                        ? Image.network(
                            data.doctors[data.currentIndex].image,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(27, 143, 199, 1),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: Text(
                                data.doctors[data.currentIndex].name[4]
                                    .toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data.doctors[data.currentIndex].name,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    data.doctors[data.currentIndex].specialisation,
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
                      CounselorDetailIcons(
                        value: data.doctors[data.currentIndex].charge,
                        subtitle: "per hour",
                        iconType: const Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),
                      ),
                      CounselorDetailIcons(
                        value: data.doctors[data.currentIndex].experience,
                        iconType: const Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        subtitle: "Experiance",
                      ),
                      const CounselorDetailIcons(
                        value: "4.9",
                        iconType: Icon(
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
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView(
                                // padding:
                                // const EdgeInsets.only(left: 20, right: 20, top: 20), //  if this is added then the shedule will not be visible properly
                                // shrinkWrap: true,
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
                                    data.doctors[data.currentIndex].description,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      leadingDistribution:
                                          TextLeadingDistribution.even,
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
                                  const Shedule()
                                ],
                              ),
                            ),
                          ],
                        ),
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
