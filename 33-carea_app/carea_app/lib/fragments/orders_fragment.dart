import 'package:carea/commons/colors.dart';
import 'package:carea/components/active_component.dart';
import 'package:carea/components/completed_component.dart';
import 'package:carea/main.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class OrderFragment extends StatefulWidget {
  const OrderFragment({super.key});

  @override
  _OrderFragmentState createState() => _OrderFragmentState();
}

class _OrderFragmentState extends State<OrderFragment> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appStore.isDarkModeOn ? scaffoldDarkColor : editTextBgColor,
        appBar: AppBar(
          backgroundColor: context.scaffoldBackgroundColor,
          leading: Transform.scale(
            scale: 0.7,
            child: Image.asset("assets/ic_car.png", fit: BoxFit.fill, color: context.iconColor),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: context.iconColor),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat, color: context.iconColor),
            ),
          ],
          title: Text("My Order", style: boldTextStyle(size: 18)),
          elevation: 0.0,
        ),
        body: Column(
          children: [
            TabBar(
              unselectedLabelColor: gray.withOpacity(0.6),
              labelColor: context.iconColor,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              indicatorColor: context.iconColor,
              tabs: const [
                Tab(child: Text('Active')),
                Tab(child: Text('Completed')),
              ],
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  ActiveComponent(),
                  CompletedComponent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
