import 'package:bross_solution/resources/custom_color.dart';
import 'package:bross_solution/resources/custom_container.dart';
import 'package:bross_solution/resources/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          title: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600),),
          backgroundColor: CustomColors.darkBlue,
          expandedHeight: 80,
          floating: true,
          stretch: true,
          actions: [
            // IconButton(onPressed: (){}, icon: Icon(Icons.notifications_sharp),iconSize: 32,color: Colors.white,),
            // IconButton(onPressed: (){}, icon: Icon(Icons.search),iconSize: 32,color: Colors.white,)
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                  // verticalPad: 8,
                  horizontalPad: 16,
                  applyShadow: true,
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.circleInfo,color: CustomColors.lightRed,size: 32,),
                      SizedBox(width: 16,),
                      CustomText(text: 'About Me',size: 24,fontWeight: FontWeight.w600,),
                     Spacer(),
                     Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                    ],
                  ),
              ),
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                // verticalPad: 8,
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.book,color: CustomColors.lightRed,size: 32,),
                    SizedBox(width: 16,),
                    CustomText(text: 'Academy Info',size: 24,fontWeight: FontWeight.w600,),
                    Spacer(),
                    Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                  ],
                ),
              ),
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                // verticalPad: 8,
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.mobile,color: CustomColors.lightRed,size: 32,),
                    SizedBox(width: 16,),
                    CustomText(text: 'My Device',size: 24,fontWeight: FontWeight.w600,),
                    Spacer(),
                    Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                  ],
                ),
              ),
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                // verticalPad: 8,
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.certificate,color: CustomColors.lightRed,size: 32,),
                    SizedBox(width: 16,),
                    Expanded(child: CustomText(text: 'My Current Enrollment/Job',size: 24,fontWeight: FontWeight.w600, textOverflow: TextOverflow.ellipsis,maxLines: 1,)),
                    Spacer(),
                    Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                  ],
                ),
              ),
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                // verticalPad: 8,
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.creditCard,color: CustomColors.lightRed,size: 32,),
                    SizedBox(width: 16,),
                    Expanded(child: CustomText(text: 'Membership Card/ Certificate',size: 24,fontWeight: FontWeight.w600, textOverflow: TextOverflow.ellipsis,)),
                    Spacer(),
                    Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                  ],
                ),
              ),
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                // verticalPad: 8,
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.download,color:CustomColors.lightRed,size: 32,),
                    SizedBox(width: 16,),
                    CustomText(text: 'Download Info',size: 24,fontWeight: FontWeight.w600,),
                    Spacer(),
                    Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                  ],
                ),
              ),
              SizedBox(height: 16,),
              CustomContainer(
                width: 0.9,
                // verticalPad: 8,
                horizontalPad: 16,
                applyShadow: true,
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.toggleOff,color: CustomColors.lightRed,size: 32,),
                    SizedBox(width: 16,),
                    CustomText(text: 'Is Active',size: 24,fontWeight: FontWeight.w600,),
                    Spacer(),
                    Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                  ],
                ),
              ),
              SizedBox(height: 16,),
              InkWell(
                onTap: (){
                  openAlertDialog(context);
                },
                child: CustomContainer(
                  width: 0.9,
                  // verticalPad: 8,
                  horizontalPad: 16,
                  applyShadow: true,
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.arrowRightFromBracket,color: CustomColors.lightRed,size: 32,),
                      SizedBox(width: 16,),
                      CustomText(text: 'Log Out',size: 24,fontWeight: FontWeight.w600,),
                      Spacer(),
                      Icon(Icons.chevron_right,size: 32,color: CustomColors.lightRed,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  //-------------------------------------------------------------------Alert Dialog----------------------------------------------------------------------------------------------------------------------------------------------------------//

void openAlertDialog(context) {
  // CustomerProfileProvider customerProfileProvider = Provider.of<CustomerProfileProvider>(context,listen: false);
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: CustomText(
              text: 'Logout',
              fontWeight: FontWeight.w600,
              size: 24,
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomText(text: 'Are you sure you want to logout?',size: 18,fontWeight: FontWeight.w600,),
                ],
              ),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child: CustomText(text: 'Yes',color: CustomColors.lightRed,),),
                SizedBox(width: 32,),
                ElevatedButton(onPressed: (){}, child: CustomText(text: 'No',color: CustomColors.darkBlue,),),
              ],
            )

          ],
        );
      });
}


}

