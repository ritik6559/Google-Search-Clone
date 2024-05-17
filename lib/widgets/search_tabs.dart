import 'package:flutter/material.dart';
import 'package:googleclone/components/search_tab_icons.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        children: [
          SearchTabIcons(icon: Icons.search, 
          title: 'All',
          isActive: true,),
          SizedBox(width: 20,
          ),
          SearchTabIcons(icon: Icons.image, 
          title: 'Images'),
          SizedBox(width: 20,),
          SearchTabIcons(icon: Icons.map, 
          title: 'Maps'),
          SizedBox(width: 20,),
          SearchTabIcons(icon: Icons.article, 
          title: 'News'),
          SizedBox(width: 20,),
          SearchTabIcons(icon: Icons.shop, 
          title: 'Shopping'),
          SizedBox(width: 20,),
          SearchTabIcons(icon: Icons.more_vert, 
          title: 'More'),
          SizedBox(width: 20,),
        ],
        ),
    );
  }
}