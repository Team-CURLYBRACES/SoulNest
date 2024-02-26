import 'package:flutter/material.dart';
import 'package:soulnest/common/profile_screen_header.dart';
import 'package:soulnest/presentation/screens/find_therapists_screen/models/therapist.dart';

class FindTherapists extends StatelessWidget {
  const FindTherapists({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Therapist> therapists = [
      Therapist(
          name: "Mr.Yohan",
          imageUrl: "assets/images/Counselor1.png",
          rating: "4.8"),
      Therapist(
          name: "Mrs.Wasana",
          imageUrl: "assets/images/Counselor2.png",
          rating: "4.9"),
      Therapist(
          name: "Mrs.Bhagya",
          imageUrl: "assets/images/Counselor3.png",
          rating: "4.4"),
      Therapist(
          name: "Mr.Shenal",
          imageUrl: "assets/images/Counselor4.png",
          rating: "4.2"),
      Therapist(
          name: "Mrs.Kanchana",
          imageUrl: "assets/images/Counselor.jpg",
          rating: "4.2"),
    ];

    return Scaffold(
      body: Column(
        children: [
          const SmallHeader(
            title: 'Therapists',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  searchField(),
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
                        itemCount: therapists.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(236, 245, 249, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            height: 117,
                            child: TherapistBox(
                              name: therapists[index].name,
                              imageUrl: therapists[index].imageUrl,
                              rating: therapists[index].rating,
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

  Container searchField() {
    return Container(
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
    );
  }
}

class TherapistBox extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;

  const TherapistBox({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Counselor',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromRGBO(255, 213, 0, 1),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                      color: Color.fromRGBO(71, 71, 71, 1), fontSize: 14),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '(100 reviews)',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
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
    );
  }
}
