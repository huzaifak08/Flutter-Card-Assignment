import 'dart:io';

import 'package:assignment_2/card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late TextEditingController nameController;
  late TextEditingController whatsappController;
  late TextEditingController phController;
  late TextEditingController emailController;
  late TextEditingController designationController;
  late TextEditingController skill1;
  late TextEditingController skill2;
  late TextEditingController skill3;

  @override
  void initState() {
    nameController = TextEditingController();
    whatsappController = TextEditingController();
    phController = TextEditingController();
    emailController = TextEditingController();
    designationController = TextEditingController();
    skill1 = TextEditingController();
    skill2 = TextEditingController();
    skill3 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    whatsappController.dispose();
    phController.dispose();
    emailController.dispose();
    designationController.dispose();
    skill1.dispose();
    skill2.dispose();
    skill3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
          child: Container(
            height: 600,
            width: 500,
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(23),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: Column(
                children: [
                  Text(
                    'Enter the required Information',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF801155),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: Text('Name'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: whatsappController,
                    decoration: InputDecoration(
                      label: Text('Whatsapp'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: phController,
                    decoration: InputDecoration(
                      label: Text('Phone No'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      label: Text('Email Address'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: designationController,
                    decoration: InputDecoration(
                      label: Text('Designation'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: skill1,
                    decoration: InputDecoration(
                      label: Text('Skill 1'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: skill2,
                    decoration: InputDecoration(
                      label: Text('Skill 2'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: skill3,
                    decoration: InputDecoration(
                      label: Text('Skill 3'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CardPage(
                              name: nameController,
                              whatsapp: whatsappController,
                              phone: phController,
                              email: emailController,
                              designation: designationController,
                              skill1: skill1,
                              skill2: skill2,
                              skill3: skill3,
                            ),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Create Card',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFF801155),
                        ),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
