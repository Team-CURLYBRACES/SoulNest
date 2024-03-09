import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soulnest/common/profile_screen_header.dart';
import 'package:soulnest/data/data.dart';

class FindTherapists extends StatelessWidget {
  const FindTherapists({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: ((context, data, child) => Scaffold(
            body: Column(
              children: [
                const SmallHeader(
                  title: 'Therapists',
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(
                                height: 20,
                              ),
                              shrinkWrap: true,
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              itemCount: data.therapists.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () => data.setIndex(index),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(236, 245, 249, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    height: 117,
                                    child: TherapistBox(
                                      name: data.therapists[index].name,
                                      imageUrl: data.therapists[index].imageUrl,
                                      rating: data.therapists[index].rating,
                                      index: index,
                                    ),
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
          )),
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
  final int index;

  const TherapistBox({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<Data>(context, listen: false).setIndex(index);
        Navigator.pushNamed(context, '/counselor-profile');
      },
      child: Row(
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
      ),
    );
  }
}
