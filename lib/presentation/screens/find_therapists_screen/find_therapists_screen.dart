import 'package:flutter/material.dart';
import 'package:soulnest/common/profile_screen_header.dart';

class FindTherapists extends StatelessWidget {
  const FindTherapists({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
    ];

    return Scaffold(
      body: Column(
        children: [
          const SmallHeader(
            title: 'Therapists',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(236, 245, 249, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.search,
                          color: Color.fromRGBO(0, 83, 145, 1),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for therapists',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 20,
                        ),
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        itemCount: entries.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(236, 245, 249, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 117,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 77,
                                  width: 77,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'assets/images/Counselor1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mr. Yohan',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Counselor',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color.fromRGBO(255, 213, 0, 1),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(71, 71, 71, 1),
                                              fontSize: 14),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '(100 reviews)',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 83, 145, 1),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
