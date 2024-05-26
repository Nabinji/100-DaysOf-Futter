import 'package:flutter/material.dart';
import 'package:health_care_app_ui/Model/model.dart';
import 'package:health_care_app_ui/more_about_doctor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // for profile  and menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("Images/menu.png"),
                Image.asset("Images/profile.png"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              " Chools Your Doctor",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              " 100+ Available",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
            ),
            const SizedBox(
              height: 30,
            ),
            // For search bar
            searchBar(),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  " Category",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Text(
                  " Children",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFDBFAFC)),
                  child: const Center(
                    child: Text(
                      "Ault",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: doctorItems.length,
                itemBuilder: (context, index) {
                  final doctor = doctorItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(doctor.categoryImage),
                                  fit: BoxFit.cover),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            doctor.drCategory,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${doctor.noOfDoctor.toString()} Doctors",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  Available Doctors",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: doctorItems.length,
                itemBuilder: (context, index) {
                  final doctor = doctorItems[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoreAboutDoctor(doctor: doctor),
                        ),
                      );
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Material(
                          elevation: 5,
                          color: doctor.containerColor,
                          borderRadius: BorderRadius.circular(40),
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Hero(
                                        tag: doctor.image,
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage(doctor.image),
                                          radius: 40,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 13, left: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                doctor.drName,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                size: 18,
                                                color: Colors.amber,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                size: 18,
                                                color: Colors.amber,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                size: 18,
                                                color: Colors.amber,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                size: 18,
                                                color: Colors.amber,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            doctor.drCategory,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 25,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                  color: doctor.color,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "${doctor.time1.toString()}.00",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                              ),
                                              Text(
                                                "${doctor.time2.toString()}.00",
                                              ),
                                              const SizedBox(
                                                width: 30,
                                              ),
                                              Text(
                                                "${doctor.time3.toString()}.00",
                                              ),
                                              const SizedBox(
                                                width: 30.5,
                                              ),
                                              Material(
                                                color: doctor.color,
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(40),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child: Icon(
                                                    Icons.arrow_forward,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 141, 140, 140),
            borderRadius: BorderRadius.circular(15)),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black54,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Doctor Speciality",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
