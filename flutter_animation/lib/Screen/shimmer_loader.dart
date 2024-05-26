import 'package:flutter/material.dart';
import 'package:flutter_animation/Model/animatedlist_model.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoader extends StatefulWidget {
  const ShimmerLoader({
    super.key,
  });

  @override
  State<ShimmerLoader> createState() => _ShimmerLoaderState();
}

class _ShimmerLoaderState extends State<ShimmerLoader> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        isLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Shimmer Loader",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, index) {
              final myUser = users[index];
              return Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                height: 70.0,
                child: isLoaded ? getDataItems(myUser) : myShimmerLoader(),
              );
            },
          )
        ],
      ),
    );
  }

  Row getDataItems(User myUser) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(myUser.image),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 15),
            SizedBox(
              child: Text(myUser.name),
            ),
            SizedBox(
              child: Text(myUser.username),
            ),
          ],
        )
      ],
    );
  }

  myShimmerLoader() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[300]!,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Column(
            children: [
              const SizedBox(height: 15),
              Container(height: 20, color: Colors.white),
              const SizedBox(height: 10),
              Container(height: 15, width: 80, color: Colors.white),
            ],
          ))
        ],
      ),
    );
  }
}
