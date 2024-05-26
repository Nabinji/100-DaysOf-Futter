import 'package:flutter/material.dart';
import 'package:health_care_app_ui/Model/model.dart';

class MoreAboutDoctor extends StatelessWidget {
  const MoreAboutDoctor({super.key, required this.doctor});

  final DoctorDetail doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // For image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Hero(
              tag: doctor.image,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: doctor.containerColor,
                child: Image.asset(
                  doctor.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.69,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 27, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // for name
                    Text(
                      doctor.drName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    // For doctor category
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      doctor.drCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "About Doctor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // about docutor
                    Text(
                      doctor.aboutDoctor,
                      style: const TextStyle(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // for schedules
                    const Text(
                      "Upcomin Schedules",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: doctor.containerColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              color: doctor.color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                doctor.date,
                                style: const TextStyle(fontSize: 30,
                                height: 0.9,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                           Padding(padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                const Text(
                                  "Consultation",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                 Text(
                                  doctor.consultainTime,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                          ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // for back button
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
