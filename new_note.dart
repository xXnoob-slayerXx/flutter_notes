import 'package:flutter/material.dart';

class NewNote extends StatefulWidget {
  const NewNote({super.key});

  @override
  State<NewNote> createState() => NewNoteState();
}

class NewNoteState extends State<NewNote> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  String title = "";
  String note = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text(
          "Add anas Note",
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.save,
                color: Colors.black,
                size: 28,
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Title",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onFieldSubmitted: (value) {},
                controller: titleController,
                decoration: InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  hintText: "Add a new title",
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Description",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                onFieldSubmitted: (value) {},
                controller: noteController,
                maxLines: 10,
                decoration: InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  hintText: "Add Description for note",
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          onPressed: () {
            if (titleController.text.isEmpty || noteController.text.isEmpty) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AlertDialog(
                      title: Text("Alert"),
                      content: Text(
                          "Please Make sure to fill the title or note area"),
                    );
                  });
            } else {
              title = titleController.text;
              note = noteController.text;
              // titleController.clear();
              // noteController.clear();
              Navigator.pop(context, [title, note]);
            }
          },
          backgroundColor: Colors.grey[200],
          child: const Icon(
            Icons.edit,
            color: Colors.grey,
            size: 30,
          ),
        ),
      ),
    );
  }
}
