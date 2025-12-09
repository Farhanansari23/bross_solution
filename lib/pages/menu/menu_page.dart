import 'package:bross_solution/resources/custom_container.dart';
import 'package:bross_solution/resources/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/custom_color.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
          title: Text("Menu",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600),),
          backgroundColor: CustomColors.darkBlue,
          expandedHeight: 80,
          floating: true,
          stretch: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_sharp),iconSize: 32,color: Colors.white,),
            IconButton(onPressed: (){}, icon: Icon(Icons.search),iconSize: 32,color: Colors.white,)
          ],
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                applyShadow: true,
                  borderRadius: 4,
                  verticalMargin: 16,
                  child: Column(
                    children: [
                      Icon(Icons.info,size: 32,color: CustomColors.lightRed,),
                      SizedBox(height: 16,),
                      CustomText(text: 'About NEPHA',isContent: true,),
                    ],
                  ),
              ),
              CustomContainer(
                applyShadow: true,
                borderRadius: 4,
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.handshake,size: 32,color: CustomColors.lightRed,),
                    SizedBox(height: 16,),
                    CustomText(text: 'LeaderShip',isContent: true,),
                  ],
                ),
              ),
              CustomContainer(
                applyShadow: true,
                borderRadius: 4,
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.history,size: 32,color: CustomColors.lightRed,),
                    SizedBox(height: 16,),
                    CustomText(text: 'History',isContent: true,),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                applyShadow: true,
                borderRadius: 4,
                verticalMargin: 8,
                horizontalMargin: 8,
                width: 0.32,
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.boxesStacked,size: 32,color:CustomColors.lightRed,),
                    SizedBox(height: 16,),
                    CustomText(text: 'State / Local Level',isContent: true,maxLines: 1,textOverflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              CustomContainer(
                applyShadow: true,
                borderRadius: 4,
                // horizontalMargin: 4,
                // width: 0.32,
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.fileCircleCheck,size: 32,color: CustomColors.lightRed,),
                    SizedBox(height: 16,),
                    CustomText(text: 'Documents',isContent: true,),
                  ],
                ),
              ),
              CustomContainer(
                applyShadow: true,
                borderRadius: 4,
                // horizontalMargin: 4,
                width: 0.24,
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.square,size: 32,color: CustomColors.lightRed,),
                    SizedBox(height: 16,),
                    CustomText(text: 'Campaigns',isContent: true,maxLines: 1,textOverflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: [
              CustomContainer(
                applyShadow: true,
                borderRadius: 4,
                verticalMargin: 8,
                horizontalMargin: 24,
                width: 0.32,
                child: Column(
                  children: [
                    FaIcon(FontAwesomeIcons.inbox,size: 32,color:CustomColors.lightRed,),
                    SizedBox(height: 16,),
                    CustomText(text: 'Election',isContent: true,maxLines: 1,textOverflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
