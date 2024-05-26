import 'package:api_integration/Filter/model.dart';
import 'package:api_integration/Filter/services.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  filterProduct() {
    ApiServices().myFilterList().then((value) {
      myItems(value!.products!);
      setState(() {});
    });
  }

  // for filtering the items
  List<Products> filterLists = [];
  List<Products> myItems(List<Products> list) {
    for (var element in list) {
      if (element.rating > 4.7 && element.rating < 5) {
        // show only the items name whose rating is greate then 4.7 and less then 5
        filterLists.add(element);
      }
    }
    return filterLists;
  }

  @override
  void initState() {
    filterProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter The Item's From API"),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: filterLists.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                filterLists[index].title.toString(),
              ),
              subtitle: Text(
                "Rating : ${filterLists[index].rating.toString()}",
              ),
            );
          }),
    );
  }
}

// in ther it showt he product  title whose brand is apple  lets check it  from postman
