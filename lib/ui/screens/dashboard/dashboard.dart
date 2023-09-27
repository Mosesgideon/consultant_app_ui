import 'dart:developer';
import 'package:consultant_app_ui/ui/screens/account/account.dart';
import 'package:consultant_app_ui/ui/screens/add_screen/add_screen.dart';
import 'package:consultant_app_ui/ui/screens/chats/chat_screen.dart';
import 'package:consultant_app_ui/ui/screens/community/community.dart';
import 'package:consultant_app_ui/ui/screens/home/home_screen.dart';
import 'package:consultant_app_ui/ui/widgets/dashboard/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int selectindex = 0;
  static List<StatefulWidget> pages = [
    const HomeScreen(),
    const Community(),
    const ChatScreen(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: InkWell(
        onTap: () => Navigator.of(context)
            .push(CupertinoPageRoute(builder: (index) => AddDoctor())),
        child: Card(
          elevation: 3,
          shadowColor: Theme.of(context).colorScheme.primary,
          color: Theme.of(context).colorScheme.background,
          shape: const CircleBorder(),
          child: SizedBox(
              height: 60,
              width: 60,
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: IndexedStack(index: selectindex, children: pages),
      bottomNavigationBar: NavBar(
        hasFab: true,
        indicator: CircleAvatar(
          radius: 10,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        navItem: [
          NavItemModel(
            onTap: () {},
            icon: const Icon(Iconsax.home),
          ),
          NavItemModel(
            onTap: () {},
            // selectedIcon: const Icon(Iconsax.add),
            icon: const Icon(Iconsax.creative_commons),
          ),
          NavItemModel(
            onTap: () {},
            icon: const Icon(Iconsax.message),
          ),
          NavItemModel(
            onTap: () {},
            icon: const Icon(Iconsax.profile_add),
          ),
        ],
        onTap: (int index) {
          log('index is $index');
          _switchTap(index);
        },
      ),
    );
  }

  _switchTap(int index) {
    setState(() {
      selectindex = index;
    });
  }
}
