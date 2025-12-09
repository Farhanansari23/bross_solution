import 'package:bross_solution/resources/custom_container.dart';
import 'package:bross_solution/resources/custom_text.dart';
import 'package:flutter/material.dart';

import '../../resources/custom_color.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(context){
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            "Chats",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: CustomColors.darkBlue,
          expandedHeight: 80,
          floating: true,
          stretch: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            icon: Icon(Icons.chevron_left),
            color: Colors.white,
            iconSize: 48,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              CustomText(text: 'Chats',isSubHeading: true,),
              SizedBox(
                height: 16,
              ),
              CustomContainer(
                  child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.lightBlue,
                  ),
                 SizedBox(width: 16,),
                  CustomText(text: 'Ram Prasad',isSubHeading: true,),


                ],
              )),
              CustomContainer(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                        backgroundColor: Colors.lightBlue,
                      ),
                      SizedBox(width: 16,),
                      CustomText(text: 'Hari Kumar',isSubHeading: true,),


                    ],
                  )),
              CustomContainer(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                        backgroundColor: Colors.lightBlue,
                      ),
                      SizedBox(width: 16,),
                      CustomText(text: 'Aviral Poudel',isSubHeading: true,),


                    ],
                  )),
              CustomContainer(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                        backgroundColor: Colors.lightBlue,
                      ),
                      SizedBox(width: 16,),
                      CustomText(text: 'Arjan Pokhrel',isSubHeading: true,),


                    ],
                  )),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              CustomText(text: 'Group Chat',isSubHeading: true,),
              SizedBox(
                height: 16,
              ),
              CustomContainer(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                        backgroundColor: Colors.lightBlue,
                      ),
                      SizedBox(width: 16,),
                      CustomText(text: 'NEPHA Group',isSubHeading: true,),


                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
