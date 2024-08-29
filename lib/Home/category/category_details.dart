import 'package:flutter/material.dart';
import 'package:newsapp/API/api_manager.dart';
import 'package:newsapp/Home/tabs/tab_widget.dart';
import 'package:newsapp/Model/SourceResponse.dart';
import 'package:newsapp/app_colors.dart';

class CategoryDetails extends StatefulWidget {

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(future: ApiManager.getSource(), builder: (context,snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
        return Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryLightColor,
          ),
        );
      }else if(snapshot.hasError){
        return Column(
          children: [
            Text('Something went wrong'),
            ElevatedButton(onPressed: (){
              ApiManager.getSource();
              setState(() {

              });
            }, child: Text('Try Again'))
          ],
        );
      }
      ///server=> success,error
      if(snapshot.data!.status !='ok'){
        return Column(
          children: [
            Text(snapshot.data!.message!),
            ElevatedButton(onPressed: (){
              ApiManager.getSource();
              setState(() {

              });
            }, child: Text('Try Again'))
          ],
        );
      }
      var sourceslist = snapshot.data!.sources!;
      return TabWidget(sourceslist: sourceslist);
    });
  }
}
