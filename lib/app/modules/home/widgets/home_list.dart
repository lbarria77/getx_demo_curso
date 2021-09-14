import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo_curso/app/data/models/user.dart';
import 'package:getx_demo_curso/app/modules/home/controllers/home_controller.dart';
import 'package:getx_demo_curso/app/modules/profile/controllers/profile_controller.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    

    return GetBuilder<HomeController>(
      id: 'users',
      builder: (_) {
        if (_.loading) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: LinearProgressIndicator(),
            ),
          );
        }
        return Container(
          child: ListView.builder(
            itemCount: _.users.length,
            itemBuilder: (ctx, index) {
              final User user = _.users[index];
              return ListTile(
                title: Text(user.firstName),
                subtitle: Text(user.email),
                onTap: () => _.showUSerProfile(user)
              );
            },
          ),
        );
      },
    );
  }
}
