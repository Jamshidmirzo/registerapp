import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  // String name;
  // Mainpage(this.name);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  schedule() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const Text(
                    'Sun,20/1/2023',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.clock,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const Text(
                    '10:00 AM-01:00 PM',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ),
                  ),
                ],
              ),
              const Text(
                'Development of software for the protection of information resources',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Stack(
                  //   children: [
                  //     Positioned(
                  //       left: 40,
                  //       child: Container(
                  //         width: 30,
                  //         height: 30,
                  //         decoration: const BoxDecoration(
                  //           color: Colors.red,
                  //           shape: BoxShape.circle,
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/images/joao.png'),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     // Positioned(
                  //     //   left: 30,
                  //     //   child: Container(
                  //     //     width: 30,
                  //     //     height: 30,
                  //     //     decoration: const BoxDecoration(
                  //     //         shape: BoxShape.circle,
                  //     //         image: DecorationImage(
                  //     //             image: AssetImage('assets/images/ney.png'))),
                  //     //   ),
                  //     // ),
                  //     // Positioned(
                  //     //   left: 10,
                  //     //   bottom: 20,
                  //     //   child: Container(
                  //     //     width: 30,
                  //     //     height: 30,
                  //     //     decoration: const BoxDecoration(
                  //     //         shape: BoxShape.circle,
                  //     //         image: DecorationImage(
                  //     //             image: AssetImage('assets/images/ron.png'))),
                  //     //   ),
                  //     // ),
                  //     // Positioned(
                  //     //   child: Container(
                  //     //     width: 30,
                  //     //     height: 30,
                  //     //     decoration: const BoxDecoration(
                  //     //         shape: BoxShape.circle,
                  //     //         image: DecorationImage(
                  //     //             image: AssetImage('assets/images/messi.png'))),
                  //     //   ),
                  //     // ),
                  //   ],
                  // ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/messi.png'))),
                  ),
                  Spacer(),
                  Container(
                    width: 70,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red.shade300),
                    child: const Text(
                      'Urgent',
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
       const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  days(bool daychoice, bool datechoice, String day, String date) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            daychoice = !daychoice;
            setState(() {});
          },
          child: Text(
            day,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: daychoice ? Colors.red : Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            datechoice = !datechoice;
            setState(() {});
          },
          child: Text(
            date,
            style: TextStyle(color: datechoice ? Colors.red : Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 250,
        leading: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,Oper',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              Text(
                'Let`schedule your activites',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white)),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Schedule',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Let`s Schedule your activites',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu_open_sharp),
                        ),
                        IconButton(
                          color: Colors.blue,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'January 2024',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const Icon(Icons.arrow_drop_down),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          days(false, false, 'T', '16'),
                          days(true, true, 'M', '17'),
                          days(false, false, 'W', '18'),
                          days(false, false, 'T', '19'),
                          days(true, false, 'S', '20'),
                          days(false, true, 'F', '21'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(right: 60),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        'All',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'New',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              schedule(),
              schedule(),
              schedule(),
              schedule(),
              schedule(),
              schedule(),
              schedule(),
            ],
          ),
        ),
      ),
    );
  }
}
