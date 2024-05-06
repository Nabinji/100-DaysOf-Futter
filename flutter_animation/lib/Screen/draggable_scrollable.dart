import 'package:flutter/material.dart';

class DraggableScrollable extends StatefulWidget {
  const DraggableScrollable({
    super.key,
  });

  @override
  State<DraggableScrollable> createState() => _DraggableScrollableState();
}

class _DraggableScrollableState extends State<DraggableScrollable> {
  double sizeOfCard = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height * 0.3,
            child: Image.network(
              "https://www.ionos.com/digitalguide/fileadmin/DigitalGuide/Screenshots_2023/google-my-maps.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: NotificationListener<DraggableScrollableNotification>(
              onNotification: ((notification) {
                setState(() {
                  sizeOfCard = 2 * notification.extent - 0.8;
                });
                return true;
              }),
              child: DraggableScrollableSheet(
                maxChildSize: 0.9,
                minChildSize: 0.38,
                builder: (context, controller) {
                  return Material(
                    elevation: 15,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        children: [
                          Center(
                            child: Container(
                              height: 3,
                              width: 50,
                              color: Colors.black45,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text("Are you ready to start your journey"),
                          const Text(
                            "Where are you going?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                              hintText: "Search your destination",
                            ),
                          ),
                          const SizedBox(height: 5),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: 15,
                              controller: controller,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: const Icon(
                                    Icons.location_on_outlined,
                                    size: 30,
                                  ),
                                  title: Text(
                                    "Address : $index",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  subtitle: Text("City $index"),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -160 *(1-sizeOfCard),
            child: Opacity(
              opacity:  sizeOfCard.clamp(0.0, 1.0),
              child: Material(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Choose Your Destination",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: "What your name",
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: "Where are you going",
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
