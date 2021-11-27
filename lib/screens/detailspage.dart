import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  //DetailsPage(this.key);
  DetailsPage(this.name, {required String Key});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isFavourite = false;

  // _DetailsPageState(String key) {
  //   //name = key;
  //   //print(key);
  // }

  favourite(String? name) {
    print(name);
    print("Helllo");
    setState(() {
      if (isFavourite)
        isFavourite = false;
      else
        isFavourite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? name = ModalRoute.of(context)?.settings.arguments.toString();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: favourite(name),
          child: isFavourite ? Icon(Icons.star) : Icon(Icons.star_border),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/flower/$name.jpg"),
                        fit: BoxFit.contain),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "About the flower",
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                ?.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
