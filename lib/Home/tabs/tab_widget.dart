import 'package:flutter/material.dart';
import 'package:newsapp/Home/news/news_widget.dart';
import 'package:newsapp/Home/tabs/tab_item.dart';
import 'package:newsapp/Model/SourceResponse.dart';

class TabWidget extends StatefulWidget {
  List<Sources> sourceslist;

  TabWidget({required this.sourceslist});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourceslist.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index){
                selectedIndex=index;
                setState(() {

                });
              },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.sourceslist
                    .map(
                        (source) => TabItem(isSelected: selectedIndex==widget.sourceslist.indexOf(source), source: source))
                    .toList()),
            SizedBox(height: 12,),
            Expanded(child: NewsWidget(source: widget.sourceslist[selectedIndex]))
          ],
        ));
  }
}
