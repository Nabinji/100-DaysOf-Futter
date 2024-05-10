import 'package:api_integration/Dio/dio_model.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioHomePage extends StatefulWidget {
  const DioHomePage({super.key});

  @override
  _DioHomePageState createState() => _DioHomePageState();
}

class _DioHomePageState extends State<DioHomePage> {
  // for dio
  Cart? cart;
  Future<void> getData() async {
    const String apiUrl = "https://dummyjson.com/carts";
    try {
      Response response = await Dio().get(apiUrl);
      if (response.data != null) {
        setState(() {
          cart = Cart.fromJson(response.data);
        });
      } else {
        throw Exception(" Api response is null or in an unexpected format");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Fetch Data From API Using Dio"),
      ),
      body: cart == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              itemCount: cart!.carts!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
              itemBuilder: (context, index) {
                return Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        cart!.carts![index].products![3].thumbnail ?? "",
                        height: 140,
                        width: 200,
                      ),
                      Text(
                        cart!.carts![index].products![3].title ?? "",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
// the reason behind type 'int' is not a subtype of type 'double?' error is 
//some api items value is both the format int and double but it dfined as one value