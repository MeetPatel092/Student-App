import 'package:flutter/material.dart';
import 'package:study_buddy/color/colors.dart';
import 'package:study_buddy/uttils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool start = true;
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
      body: Column(
        children: [
          (StudentData.start)
              ? Container(
                  margin: EdgeInsets.only(top: 300),
                  alignment: Alignment.center,
                  child: Text(
                    "Create the Data ",
                    style: TextStylling.b_text1,
                  ),
                )
              : Container(),
          if (StudentData.start)
            Container()
          else
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 110,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: primaryblue,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1576506542790-51244b486a6b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.srgbToLinearGamma(),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 20,
                            top: 8,
                          ),
                          child: Text(
                            "${StudentData.s_name}",
                            style: TextStyle(
                                fontSize: 26,
                                color: primarywhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "${StudentData.s_grid}",
                          style: TextStyle(
                              fontSize: 12,
                              color: primarywhite,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: BeveledRectangleBorder(
                                        // borderRadius: BorderRadius.circular(10),
                                        ),
                                    backgroundColor: Colors.green,
                                    content: Container(
                                      height: 300,
                                      child: SingleChildScrollView(
                                        child: Form(
                                          key: studentkey,
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                onSaved: (val) {},
                                                controller: namecontroller,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "${StudentData.s_name}",
                                                  hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: primarywhite,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                onSaved: (val) {},
                                                controller: gridcontroller,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "${StudentData.s_grid}",
                                                  hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: primarywhite,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              TextFormField(
                                                onSaved: (val) {},
                                                controller: stdcontroller,
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                      "${StudentData.s_std}",
                                                  hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: primarywhite,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 50,
                                                      width: 120,
                                                      child: OutlinedButton(
                                                          onPressed: () {},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                                  foregroundColor:
                                                                      primaryblue),
                                                          child: Text(
                                                            "Clear",
                                                            style: TextStylling
                                                                .buttontext,
                                                          )),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                      width: 120,
                                                      child: ElevatedButton(
                                                          onPressed: () {
                                                            if (studentkey
                                                                .currentState!
                                                                .validate()) {
                                                              studentkey
                                                                  .currentState!
                                                                  .validate();

                                                              StudentData
                                                                      .s_name =
                                                                  namecontroller
                                                                      .text;
                                                              StudentData
                                                                      .s_grid =
                                                                  gridcontroller
                                                                      .text;
                                                              StudentData
                                                                      .s_std =
                                                                  stdcontroller
                                                                      .text;

                                                              setState(() {
                                                                Navigator.of(
                                                                        context)
                                                                    .pushReplacementNamed(
                                                                        "/");
                                                              });
                                                            }
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                primaryblue,
                                                            foregroundColor:
                                                                primarywhite,
                                                          ),
                                                          child: Text(
                                                            "Update",
                                                            style: TextStylling
                                                                .buttontext2,
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.edit),
                            color: primarywhite,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                StudentData.start = true;
                              });
                            },
                            icon: Icon(Icons.delete),
                            color: primarywhite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.of(context).pushReplacementNamed("detailpage");
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
