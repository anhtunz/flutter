import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page/entity/banbe.dart';
import 'package:login_page/entity/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Center(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: screenHeight - 50,
                width: 400,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  height: screenHeight - 50,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 66, 60, 60),
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            'Đoạn chat',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 66, 60, 60),
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.photo_camera,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 66, 60, 60),
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromARGB(255, 94, 92, 92),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              // borderSide: BorderSide(
                              //     color: Colors.black),
                            ),
                            hintText: 'Tìm kiếm',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 196, 188, 188),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 196, 188, 188),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: (screenWidth - 40) / 6,
                              height: 150,
                              child: Column(
                                children: [
                                  Container(
                                    width: (screenWidth - 40) / 6,
                                    height: 50.0,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 66, 60, 60),
                                      shape: BoxShape.circle,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Icon(
                                        Icons.sentiment_satisfied,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Đặt trạng thái",
                                    style: TextStyle(color: Colors.white),
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                                children: List.generate(dsach.length, (index) {
                              return Container(
                                width: (screenWidth - 40) / 5,
                                height: 150,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.amber,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              dsach[index].avatar
                                              ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              dsach[index].ten,
                                              style: TextStyle(color: Colors.white),
                                              maxLines: 2,
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }))
                          ],
                        ),
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                      SizedBox(
                        height: 523,
                        width: screenWidth - 40,
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Column(
                                children: List.generate(
                                  items.length,
                                  (index) {
                                    return Container(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.amber,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image:
                                                    AssetImage(items[index].avatar),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: screenWidth - 40 - 50 - 50,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0, right: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 25,
                                                    child: Text(
                                                      items[index].ten,
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                      textAlign: TextAlign.start,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height: 20,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              items[index].ndung,
                                                              style: items[index]
                                                                      .dadoc
                                                                  ? const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    )
                                                                  : const TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                              textAlign:
                                                                  TextAlign.start,
                                                              overflow: TextOverflow
                                                                  .ellipsis,
                                                              maxLines: 1,
                                                            ),
                                                          ),
                                                          Text(
                                                            items[index].thoigian,
                                                            style: const TextStyle(
                                                              color: Colors.white,
                                                              fontWeight:
                                                                  FontWeight.w600,
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 38,
                                            height: 25,
                                            child: Center(
                                              child: Icon(
                                                items[index].trangthai
                                                    ? null
                                                    : Icons.notifications_off,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                     
                    ],
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                color: Colors.deepPurple,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
