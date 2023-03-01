import 'package:flutter/material.dart';
import 'package:good_literature_app/view/authors_page.dart';
import 'package:good_literature_app/view/books_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("literature"),
        centerTitle: true,),
        body:  Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                SizedBox(
                  height: 100,

                ),

                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BooksPage()));

                  },
                  child: Container(
                    height: 100,
                    width: 1000,
                      child: Center(child: Text("Books",style: TextStyle(fontSize: 25),)),
                    decoration: BoxDecoration(  borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    )),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AuthorsPage()));

                  },
                  child: Container(
                      height: 100,
                      width: 1000,
                      child: Center(child: Text("Authors",style: TextStyle(fontSize: 25),)),
                      decoration: BoxDecoration(  borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      )),
                ),

                Container(
                    height: 100,
                    width: 1000,
                    child: Center(child: Text("Chats",style: TextStyle(fontSize: 25),)),
                    decoration: BoxDecoration(  borderRadius: BorderRadius.circular(5),
                      color: Colors.blue,
                    )),

                SizedBox(
                  height: 100,
                ),
              ],
            ),

          ),
        ));
  }
}
