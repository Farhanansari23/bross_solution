import 'package:bross_solution/resources/custom_container.dart';
import 'package:bross_solution/resources/custom_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../resources/custom_color.dart';
import '../../resources/custom_text.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body(context));
  }

  Widget _body(context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            "Personal Info",
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
            children: [
              SizedBox(height: 16),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                // color: CustomColors.lightRed,
                child: Icon(Icons.person,size: 80,),
              ),
              SizedBox(height: 16),
              CustomContainer(
                width: 1,
                borderRadius: 4,
                applyShadow: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: 'Tony Stark', isHeading: true),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.pen),
                        ),
                      ],
                    ),
                    CustomText(text: 'Membership Date : 2042-10-08',isContent: true,textOverflow:TextOverflow.ellipsis,maxLines: 2,),
                    CustomText(text: 'Membership No: : 1',isContent: true,textOverflow:TextOverflow.ellipsis,maxLines: 2,),
                    CustomText(text: 'Mobile Number: 983456456',isContent: true,textOverflow:TextOverflow.ellipsis,maxLines: 2,),
                    CustomText(text: 'Address: Los Angelas',isContent: true,textOverflow:TextOverflow.ellipsis,maxLines: 2,),
                  ],
                ),
              ),
              SizedBox(height: 16),
              CustomExpansionTile(
                  title: 'Academic Info',
                  children: [
                   DataTable(
                       columns: [
                         DataColumn(label: Text('Education')),
                         DataColumn(label: Text('Board')),
                         DataColumn(label: Text('Passed Year')),
                       ],
                       rows: [
                         DataRow(
                           cells: [
                           DataCell(Text('Bachelors'),),
                           DataCell(Text('NEB'),),
                           DataCell(Text('2082'),),
                         ],
                         ),
                         DataRow(
                           cells: [
                             DataCell(Text('Masters'),),
                             DataCell(Text('SEE'),),
                             DataCell(Text('2072'),),
                           ],
                         ),
                         DataRow(
                           cells: [
                             DataCell(Text('Bachelors'),),
                             DataCell(Text('HSEB'),),
                             DataCell(Text('2072'),),
                           ],
                         ),
                       ],
                   ),
                  ],
              ),
              SizedBox(height: 16),
              CustomExpansionTile(
                title: 'Career Info',
                children: [
                  DataTable(
                    columns: [
                      DataColumn(label: Text('Education')),
                      DataColumn(label: Text('Board')),
                      DataColumn(label: Text('Passed Year')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('Bachelors'),),
                          DataCell(Text('NEB'),),
                          DataCell(Text('2082'),),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Masters'),),
                          DataCell(Text('SEE'),),
                          DataCell(Text('2072'),),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Bachelors'),),
                          DataCell(Text('HSEB'),),
                          DataCell(Text('2072'),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              CustomExpansionTile(
                title: 'Certificates',
                children: [
                  DataTable(
                    columns: [
                      DataColumn(label: Text('Education')),
                      DataColumn(label: Text('Board')),
                      DataColumn(label: Text('Passed Year')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('Bachelors'),),
                          DataCell(Text('NEB'),),
                          DataCell(Text('2082'),),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Masters'),),
                          DataCell(Text('SEE'),),
                          DataCell(Text('2072'),),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Bachelors'),),
                          DataCell(Text('HSEB'),),
                          DataCell(Text('2072'),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
