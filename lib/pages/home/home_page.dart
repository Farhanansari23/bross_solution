import 'package:bross_solution/pages/chats/chat_page.dart';
import 'package:bross_solution/pages/profile/profile_page.dart';
import 'package:bross_solution/resources/custom_color.dart';
import 'package:bross_solution/resources/custom_container.dart';
import 'package:bross_solution/resources/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(), // Your main Sliver page
    // EventPage(),
    ChatPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _body(context),
      backgroundColor: CustomColors.primaryWhite,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: "MemberShip",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

      ],),
    );
  }

  final List<String> imgList = [
    'https://picsum.photos/id/1011/600/300',
    'https://picsum.photos/id/1012/600/300',
    'https://picsum.photos/id/1013/600/300',
    'https://picsum.photos/id/1014/600/300',
  ];

  Widget _body(context){
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Home Page",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600),),
          backgroundColor: CustomColors.darkBlue,
          expandedHeight: 80,
          floating: true,
          stretch: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search),iconSize: 32,color: Colors.white,)
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16,),
              CarouselSlider(
                  items: imgList.map((item) => Container(
                    margin: EdgeInsets.symmetric(vertical: 4.0,),
                    width: MediaQuery.of(context).size.width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(image: NetworkImage(item),
                          fit: BoxFit.cover),
                    ),
                  ),).toList(),
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    aspectRatio: 16/9,
                    autoPlayInterval: Duration(seconds: 6),
                  )),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('NEPHA News',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.red),),
                    Text('View All',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                  ],
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
         child: Column(
           children: [
             SizedBox(height: 24,),
             CustomContainer(
               horizontalPad: 16,
                 applyShadow: true,
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       height: MediaQuery.of(context).size.height*0.16,
                       width: MediaQuery.of(context).size.width*0.24,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage('https://picsum.photos/id/1035/600/300',),
                             fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     SizedBox(width: 16,),
                     Expanded(
                       child: CustomText(
                           text: 'ननेपाल सार्वजनिक स्वास्थ्य संघ (NEPHA) ले स्वास्थ्य सेवामा सुधारका लागि सार्वजनिक संवाद कार्यक्रम आयोजना गर्यो।',
                         textOverflow: TextOverflow.ellipsis,
                         size: 19,
                         maxLines: 4,
                       ),
                     ),
                   ],
                 ),
               width: 0.9,
               height: 0.2,
               borderRadius: 4,
             ),
           ],
         ),
       ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 24,),
              CustomContainer(
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.16,
                      width: MediaQuery.of(context).size.width*0.24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://picsum.photos/id/1025/600/300',),
                          fit: BoxFit.cover,
                          scale: 24.0
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: CustomText(
                        text: 'नेपालमा भूकम्पः बिहान ८:१३ बजे म्याग्निच्युड ४.१ को भूकम्प गएको।',
                        textOverflow: TextOverflow.ellipsis,
                        size: 19,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                width: 0.9,
                height: 0.2,
                borderRadius: 4,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:24.0),
                child: CustomText(text: 'Events',isHeading: true,),
              )
            ],
          ),
        ),
      ],

    );
  }

}
