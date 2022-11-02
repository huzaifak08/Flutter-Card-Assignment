import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  TextEditingController name = TextEditingController();
  TextEditingController whatsapp = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController designation = TextEditingController();
  TextEditingController skill1 = TextEditingController();
  TextEditingController skill2 = TextEditingController();
  TextEditingController skill3 = TextEditingController();

  CardPage({
    super.key,
    required this.name,
    required this.whatsapp,
    required this.phone,
    required this.email,
    required this.designation,
    required this.skill1,
    required this.skill2,
    required this.skill3,
  });

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF801155),
        title: Text('Card'),
      ),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
          elevation: 10,
          child: Container(
            height: 300,
            width: 500,
            // color: Color.fromARGB(255, 241, 198, 69),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 250, 236, 187),
                Color(0xFF801155)
              ]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/147/147133.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10.0, bottom: 5.0),
                        child: Text(
                          widget.name.text,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15.0, bottom: 10.0),
                        child: Text(
                          widget.designation.text,
                          style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      // Information Column:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            //Phone:
                            Row(children: [
                              Icon(Icons.phone_android_outlined),
                              SizedBox(width: 13),
                              Text(widget.phone.text)
                            ]),

                            SizedBox(height: 3),

                            // Email:
                            Row(
                              children: [
                                Icon(Icons.email_outlined),
                                SizedBox(width: 13),
                                Text(widget.email.text)
                              ],
                            ),
                            SizedBox(height: 3),

                            //Whatsapp:
                            Row(
                              children: [
                                Icon(Icons.whatsapp_outlined),
                                SizedBox(width: 13),
                                Text(widget.whatsapp.text),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildDetails(widget.skill1.text),
                    buildDetails(widget.skill2.text),
                    buildDetails(widget.skill3.text),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDetails(String skill) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 11,
        ),
        SizedBox(width: 12),
        Text(
          skill,
          style: TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
