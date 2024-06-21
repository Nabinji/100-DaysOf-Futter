import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreSlideshow extends StatefulWidget {
  const FirestoreSlideshow({super.key});

  @override
  createState() => FirestoreSlideshowState();
}

class FirestoreSlideshowState extends State<FirestoreSlideshow> {
  late Stream _stream;
  final PageController myController = PageController(viewportFraction: 0.7);
  // keep track of current page to avoid unnecessary renders
  int currentPage = 0;
  String activeTag = 'sports';
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  void initState() {
    streamData();
    super.initState();
    // set state when page changes
    myController.addListener(() {
      int next = myController.page!.round();
      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: StreamBuilder(
          stream: _stream,
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List sliderList = snapshot.data.toList();
            return PageView.builder(
                controller: myController,
                itemCount: sliderList.length + 1,
                itemBuilder: (context, currentindex) {
                  if (currentindex == 0) {
                    return storyChoosePage();
                  } else if (sliderList.length >= currentindex) {
                    // Active page
                    bool active = currentindex == currentPage;
                    return storyPaage(sliderList[currentindex - 1], active);
                  }
                  return null;
                });
          }),
    );
  }

  Stream streamData({String tag = 'sports'}) {
    Query query = firebaseFirestore
        .collection("stories")
        .where('tags', arrayContains: tag);
    _stream = query.snapshots().map((querySnapshot) =>
        querySnapshot.docs.map((doc) => doc.data()).toList());
    // for update the active tag
    setState(() {
      activeTag = tag;
    });
    return _stream;
  }

  storyChoosePage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Story For You",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        const Text(
          "Choose",
          style: TextStyle(color: Colors.black54),
        ),
        storyButton("sports"),
        storyButton("movies"),
        storyButton("music"),
      ],
    );
  }

  storyButton(tag) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: tag == activeTag ? Colors.blue : Colors.white,
        elevation: 2,
        shadowColor: Colors.black,
      ),
      onPressed: () => streamData(tag: tag),
      child: Text(
        '#$tag',
        style: TextStyle(
          color: tag == activeTag ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  storyPaage(Map data, bool active) {
    // Animation parts of this project
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 100 : 200;
    return AnimatedContainer(
      width: 500,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeOutQuint,
      margin: EdgeInsets.only(
        top: top,
        bottom: 50,
        right: 35,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          
          image: NetworkImage(
            data['img'],
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            blurRadius: blur,
            offset: Offset(offset, offset),
          ),
        ],
      ),
      child: Center(
        child: Text(
          data['title'],
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
// in tags => if we add only the sports the data is shown in sports section only
