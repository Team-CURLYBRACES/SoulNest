import 'package:flutter/material.dart';
import 'package:soulnest/presentation/screens/counselor_profile_screen/widgets/counselorDetailIcons.dart';

class CounselorProfile extends StatelessWidget {
  const CounselorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              background(size),
              header(context, size),
              Positioned(
                top: size.height * 0.25,
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
              bottom(size),
              favouriteIcon(size),
            ],
          ),
        ],
      ),
    );
  }

  Positioned favouriteIcon(Size size) {
    return Positioned(
      right: 0,
      top: size.height * 0.265,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: size.width * 0.04),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(27, 143, 199, 1),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  Positioned bottom(Size size) {
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

  Stack background(Size size) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
        ),
        Container(
          width: double.infinity,
          height: 287,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromRGBO(27, 143, 199, 1),
                Color.fromRGBO(1, 32, 111, 1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row header(BuildContext context, Size size) {
    return Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 57, 127, 0.38),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: SizedBox(
                  width: 30,
                  child: IconButton(
                    iconSize: 25,
                    color: Colors.white,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    width: size.width,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Counselor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
