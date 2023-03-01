import 'package:flutter/material.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Books"),
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
                            title: Text("Semerkand"),
                            tileColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                        leading: IconButton(icon: Icon(Icons.book,),color: Colors.red, onPressed: () {  },),
                        trailing:  IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.favorite_border),
                        ),
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
