import 'package:flutter/material.dart';
import 'package:study_buddy/color/colors.dart';
import 'package:study_buddy/uttils/global.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  GlobalKey<FormState> studentkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController gridcontroller = TextEditingController();
  TextEditingController stdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Study Buddy",
            style: TextStylling.title,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: studentkey,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (val) {},
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter the your name..";
                      }
                      return null;
                    },
                    controller: namecontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter the your Name",
                      hintStyle: TextStylling.fontstyle,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onSaved: (val) {},
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter the your GRID...";
                      }
                      return null;
                    },
                    controller: gridcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter the GRID",
                      hintStyle: TextStylling.fontstyle,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onSaved: (val) {},
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter the your Std...";
                      }
                      return null;
                    },
                    controller: stdcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter the Std",
                      hintStyle: TextStylling.fontstyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: OutlinedButton(
                              onPressed: () {
                                namecontroller.clear();
                                gridcontroller.clear();
                                stdcontroller.clear();
                              },
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: primaryblue),
                              child: Text(
                                "Clear",
                                style: TextStylling.buttontext,
                              )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                              onPressed: () {
                                if (studentkey.currentState!.validate()) {
                                  studentkey.currentState!.validate();

                                  StudentData.s_name = namecontroller.text;
                                  StudentData.s_grid = gridcontroller.text;
                                  StudentData.s_std = stdcontroller.text;

                                  Navigator.of(context)
                                      .pushReplacementNamed("/");
                                  StudentData.start = false;
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryblue,
                                foregroundColor: primarywhite,
                              ),
                              child: Text(
                                "Save",
                                style: TextStylling.buttontext2,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
