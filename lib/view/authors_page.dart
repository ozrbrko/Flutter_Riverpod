import 'package:flutter/material.dart';

class AuthorsPage extends StatefulWidget {
  const AuthorsPage({Key? key}) : super(key: key);

  @override
  State<AuthorsPage> createState() => _AuthorsPageState();
}

class _AuthorsPageState extends State<AuthorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authors"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: [
              PhysicalModel(
                color: Colors.purple,
                elevation: 30,
                child: Center(heightFactor: 5, child: const Text("Books")),
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              SizedBox(
                height: 27,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => ListTile(
                        title: Text("Amin Maalouf"),
                        tileColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        leading: IconButton(icon: Icon(Icons.person,),color: Colors.red, onPressed: () {  },),

                      ),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 15))
            ],
          ),
        ),
      ),
    );
  }
}
