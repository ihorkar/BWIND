import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteFriendPage extends StatefulWidget {
  InviteFriendPage({super.key});

  State<InviteFriendPage> createState() => _InviteFriendPageState();
}

class _InviteFriendPageState extends State<InviteFriendPage> {
  List<Map<String, dynamic>> contactsList = [
    {
      "name": "Alina ",
      "number": 123456789,
      "image": "assets/images/profile10.png",
      "isInvited": false
    },
    {
      "name": "Oleksii",
      "number": 123456789,
      "image": "assets/images/profile9.png",
      "isInvited": true
    },
    {
      "name": "Vlada",
      "number": 123456789,
      "image": "assets/images/profile8.png",
      "isInvited": false
    },
    {
      "name": "Alexandre",
      "number": 123456789,
      "image": "assets/images/profile7.png",
      "isInvited": true
    },
    {
      "name": "Yevhen",
      "number": 123456789,
      "image": "assets/images/profile13.png",
      "isInvited": true
    },
    {
      "name": "Semen",
      "number": 123456789,
      "image": "assets/images/profile12.png",
      "isInvited": true
    },
    {
      "name": "Nastya",
      "number": 123456789,
      "image": "assets/images/profile11.png",
      "isInvited": true
    },
    {
      "name": "Sofia",
      "number": 123456789,
      "image": "assets/images/profile6.png",
      "isInvited": false
    },
    {
      "name": "Dmytro",
      "number": 123456789,
      "image": "assets/images/profile11.png",
      "isInvited": false
    },
    {
      "name": "Heorhii",
      "number": 123456789,
      "image": "assets/images/profile7.png",
      "isInvited": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding:
                const EdgeInsets.only(top: 50, bottom: 0, left: 16, right: 16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                  Text(
                    "Invite Friends",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 0,
                    width: 35,
                  )
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ContactsListView(),
                ),
              ),
            ])));
  }

  contactsListTile(image, name, number, bool isInvited) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color(0xFFF9F9F9),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      number.toString(),
                      style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          isInvited
              ? InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(27)),
                        border: Border.all(color: Color(0xFF6F30C0), width: 1)),
                    child: Text(
                      "Invited",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF6F30C0),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFF6F30C0),
                      borderRadius: BorderRadius.all(Radius.circular(27)),
                      border: Border.all(color: Color(0xFF6F30C0), width: 1)),
                  child: Text(
                    "Invite",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
        ],
      ),
    );
  }

  ContactsListView() {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: contactsList.length,
        itemBuilder: (context, index) {
          return contactsListTile(
              contactsList[index]['image'],
              contactsList[index]['name'],
              contactsList[index]['number'],
              contactsList[index]['isInvited']);
        });
  }
}
