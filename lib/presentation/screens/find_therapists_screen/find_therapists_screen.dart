import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soulnest/presentation/common/profile_screen_header.dart';
import 'package:soulnest/models/doctor.dart';
import 'package:soulnest/providers/doctors_provider.dart';

class FindTherapists extends StatefulWidget {
  const FindTherapists({Key? key}) : super(key: key);

  @override
  State<FindTherapists> createState() => _FindTherapistsState();
}

class _FindTherapistsState extends State<FindTherapists> {
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<DoctorsProvider>(context, listen: false).getAllDoctors();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DoctorsProvider>(
      builder: ((context, value, child) => Scaffold(
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
                              itemCount: filteredTherapists(value).length,
                              itemBuilder: (BuildContext context, int index) {
                                final therapist =
                                    filteredTherapists(value)[index];
                                return GestureDetector(
                                  onTap: () => value.setIndex(index),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(236, 245, 249, 1),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    height: 117,
                                    child: TherapistBox(
                                      name: therapist.name,
                                      imageUrl: therapist.image,
                                      rating: "4.9",
                                      index: index,
                                      occupation: therapist.specialisation,
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

  List<Doctor> filteredTherapists(DoctorsProvider value) {
    return value.doctors.where((therapist) {
      final name = therapist.name.toLowerCase();
      final specialisation = therapist.specialisation.toLowerCase();
      final query = _searchQuery.toLowerCase();
      return name.contains(query) || specialisation.contains(query);
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
        Provider.of<DoctorsProvider>(context, listen: false).setIndex(index);
        Navigator.pushNamed(context, '/counselor-profile');
      },
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          imageUrl.isNotEmpty
              ? Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: const Color.fromRGBO(27, 143, 199, 1),
                    child: Center(
                        child: Text(name[4],
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: Colors.white))),
                  ),
                ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headlineMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  _truncateOccupation(occupation),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.grey[600]),
                  overflow: TextOverflow.ellipsis,
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
          ),
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

  String _truncateOccupation(String occupation) {
    const maxLength = 25;
    return occupation.length <= maxLength
        ? occupation
        : '${occupation.substring(0, maxLength)}...';
  }
}
