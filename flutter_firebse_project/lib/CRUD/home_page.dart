import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CRUDoperation extends StatefulWidget {
  const CRUDoperation({super.key});

  @override
  State<CRUDoperation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CRUDoperation> {
  // for text editing controllor
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _positionController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();

  final CollectionReference myItems =
      FirebaseFirestore.instance.collection("CRUDitems"); // name must be same

  // for create operation
  Future<void> create() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return myDialogBox(
          context: context,
          name: "Create Operation",
          condition: "Create",
          onPressed: () {
            String name = _nameController.text;
            String position = _positionController.text;
            addItems(name, position);
            Navigator.pop(context); // terminate dialog after creating items.
          },
        );
      },
    );
  }

  void addItems(String name, String position) {
    myItems.add({
      'name': name,
      'position': position,
    });
  }

  // for update operation
  Future<void> _update(DocumentSnapshot documentSnapshot) async {
    _nameController.text = documentSnapshot['name'];
    _positionController.text = documentSnapshot['position'];
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return myDialogBox(
          context: context,
          name: "Update Your Data",
          condition: "Update",
          onPressed: () async {
            String name = _nameController.text;
            String position = _positionController.text;

            await myItems.doc(documentSnapshot.id).update({
              'name': name,
              'position': position,
            });
            _nameController.text = '';
            _positionController.text = '';
            Navigator.pop(context); // terminate dialog after updating items.
          },
        );
      },
    );
  }

  // for delete operation
  Future<void> delete(String productId) async {
    await myItems.doc(productId).delete();
    // for snackbar after delete items
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.red,
        duration: Duration(milliseconds: 500),
        content: Text("Delete Successfully"),
      ),
    );
  }

  String searchText = '';

  void _onSearchChange(String value) {
    setState(() {
      searchText = value;
    });
  }

  bool isSearchClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: isSearchClick
            ? Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  onChanged: _onSearchChange,
                  controller: _searchController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 12),
                      hintText: "Search...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.black,
                      )),
                ),
              )
            : const Text(
                "Firestore CRUD",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isSearchClick = !isSearchClick;
                });
              },
              icon: Icon(
                isSearchClick ? Icons.close : Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      // for display the firestor items
      body: StreamBuilder(
        stream: myItems.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            final List<DocumentSnapshot> items = streamSnapshot.data!.docs
                .where(
                  (doc) => doc['name'].toLowerCase().contains(
                        searchText.toLowerCase(),
                      ),
                )
                .toList();
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot = items[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(
                          documentSnapshot['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          documentSnapshot['position'],
                        ),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () => _update(documentSnapshot),
                                icon: const Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () => delete(documentSnapshot.id),
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      // for create new project icon
      floatingActionButton: FloatingActionButton(
        onPressed: create,
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Dialog myDialogBox({
    required BuildContext context,
    required String name,
    required String condition,
    required VoidCallback onPressed,
  }) =>
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                    ),
                  ),
                ],
              ),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Enter the Name",
                  hintText: 'eg . John',
                ),
              ),
              TextField(
                controller: _positionController,
                decoration: const InputDecoration(
                  labelText: "Enter the Position",
                  hintText: 'eg . Developer',
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(condition),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      );
}
