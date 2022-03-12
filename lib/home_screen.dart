import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'InfoPage',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.teal,
          leading: const Icon(Icons.menu_outlined, color: Colors.black),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        body: PageInfo(),
      ),
    );
  }
}

class PageInfo extends StatefulWidget {
  const PageInfo({Key? key}) : super(key: key);

  @override
  State<PageInfo> createState() => _PageInfoState();
}

class _PageInfoState extends State<PageInfo> {
  List<Map<dynamic, dynamic>> infoDoctor = [
    {'Education': 'EyeSurger', 'name': 'Dr.Manish Bardoliya'},
    {'Education': 'HeartSurger', 'name': 'Dr.Nirav Shah'},
    {'Education': 'NeuroSurger', 'name': 'Dr.Mohan Varma'},
  ];
  List<dynamic> timeInfo = [
    '9:00',
    '9:30',
    '10:00',
    '11:00',
    '12:00',
    '4:00',
    '5:00',
    '6:00'
  ];
  List<dynamic> genderInfo = ['Male', 'Female'];
  int myDocIndex = 0;
  int myTimeIndex = 0;
  String mySelectedDoctor = '';
  String mySelectedTime = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
              width: 200,
              height: 40,
              child: Card(
                  elevation: 5,
                  child: Center(child: Text('Select Your Doctor')))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: infoDoctor.map((doctor) {
              int DoctorIndex = infoDoctor.indexOf(doctor);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    myDocIndex = DoctorIndex;
                    mySelectedDoctor = doctor['name'];
                  });
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: myDocIndex == DoctorIndex
                          ? BoxDecoration(
                              border: Border.all(color: Colors.green, width: 5),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.withOpacity(0.2))
                          : BoxDecoration(
                              border:
                                  Border.all(color: Colors.blueGrey, width: 5),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${doctor['name']}'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: myDocIndex == DoctorIndex
                          ? BoxDecoration(
                              border: Border.all(color: Colors.green, width: 5),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green.withOpacity(0.2))
                          : BoxDecoration(
                              border:
                                  Border.all(color: Colors.blueGrey, width: 5),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${doctor['Education']}'),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          SizedBox(
              width: 200,
              height: 40,
              child: Card(
                  elevation: 5, child: Center(child: Text(mySelectedDoctor)))),
          const SizedBox(
              width: 200,
              height: 40,
              child: Card(
                  elevation: 5,
                  child: Center(child: Text('Select Your Time')))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: timeInfo.map((time) {
              int TimeIndex = timeInfo.indexOf(time);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    myTimeIndex = TimeIndex;
                    mySelectedTime = timeInfo[TimeIndex];
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: TimeIndex == myTimeIndex
                        ? BoxDecoration(
                            border: Border.all(color: Colors.green, width: 5),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.withOpacity(0.2))
                        : BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 5),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(time),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
              width: 200,
              height: 40,
              child: Card(
                  elevation: 5, child: Center(child: Text(mySelectedTime)))),
        ],
      ),
    );
  }
}
