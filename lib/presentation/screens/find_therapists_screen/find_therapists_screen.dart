import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soulnest/presentation/common/profile_screen_header.dart';
import 'package:soulnest/data/data.dart';
import 'package:soulnest/presentation/screens/find_therapists_screen/models/therapist.dart';

class FindTherapists extends StatefulWidget {
  const FindTherapists({Key? key}) : super(key: key);

  @override
  State<FindTherapists> createState() => _FindTherapistsState();
}

class _FindTherapistsState extends State<FindTherapists> {
  String _searchQuery = '';

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
                              itemCount: filteredTherapists(data).length,
                              itemBuilder: (BuildContext context, int index) {
                                final therapist =
                                    filteredTherapists(data)[index];
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
                                      name: therapist.name,
                                      imageUrl: therapist.imageUrl,
                                      rating: therapist.rating,
                                      index: index,
                                      occupation: therapist.occupation,
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

  List<Therapist> filteredTherapists(Data data) {
    return data.therapists.where((therapist) {
      final name = therapist.name.toLowerCase();
      final occupation = therapist.occupation.toLowerCase();
      final query = _searchQuery.toLowerCase();
      return name.contains(query) || occupation.contains(query);
    }).toList();
  }

  Container searchField() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(236, 245, 249, 1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.search,
            color: Color.fromRGBO(0, 83, 145, 1),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: const InputDecoration(
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
  final String occupation;

  const TherapistBox({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.index,
    required this.occupation,
  }) : super(key: key);

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
              Text(name, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: 5,
              ),
              Text(occupation,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.grey[600])),
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
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: const Color.fromRGBO(71, 71, 71, 1),
                        ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(100 reviews)',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey,
                        ),
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
