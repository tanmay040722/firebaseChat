import 'package:firebasechatblock/prasenntation%20/ui/group_chat_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/profile_page.dart';
import 'package:firebasechatblock/prasenntation%20/ui/user_page.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/custom_toolbar_widget.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/text_container.dart';
import 'package:firebasechatblock/prasenntation%20/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final searchController = TextEditingController();
  PageController _pageController = PageController(initialPage: 0);
  bool isSearch = false;
  int _toolbarIndex = 0;
  final List<String> _popUpmenuList = ['LogOut'];


  Widget _buildSearchWidget() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      height: 40,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.3),
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 0.5)),
      ]),
      child: TextFieldContainerWidget(
        icon: Icons.arrow_back,
        hintText: 'Search',
        controller: searchController,
        borderRadius: 0.0,
        color: Colors.white,
        onTap: () {
          setState(() {
            isSearch = !isSearch;
          });
        },
      ),
    );
  }

  Widget _emptyContainer() {
    return Container(
      height: 0,
      width: 0,
    );
  }

  List<Widget> get pages => [GroupChatView(), UserPageView(), ProfileView()];

  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: isSearch ? Colors.transparent : primaryColor,
        title: isSearch ? _emptyContainer() : Text('Home Group Chat'),
        flexibleSpace: isSearch ? _buildSearchWidget() : _emptyContainer(),
        actions: isSearch
            ? []
            : [
                InkWell(
                    onTap: () {
                      setState(() {
                        isSearch = !isSearch;
                      });
                    },
                    child: Icon(Icons.search)),
                PopupMenuButton(
                    itemBuilder: (_) => _popUpmenuList.map((items) {
                          return PopupMenuItem(child: Text("$items"));
                        }).toList()),
              ],
      ),
      body: isSearch ? _emptyContainer() : Column(
        children: [
          CustomToolBarWidget(
            tabIndex: _toolbarIndex,
            toolBarIndexController: (index) {
              setState(() {
                _toolbarIndex = index;
              });
              _pageController.jumpToPage(index);
            },
          ),
          Expanded(
              child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _toolbarIndex = index;
                });
            },
            itemCount: pages.length,
            itemBuilder: (context, index) => pages[index],
          ))
        ],
      ),
    );
  }
}
