import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/service/local/local.storage.service.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import '../../theme/base.theme.dart';
import 'about/about.profile.view.dart';
import 'interest/interest.profile.view.dart';

enum VertMenuItem { logout }

class ProfileUserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseTheme.profileBgColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          '@johndoe',
          style: customTextStyle(
              color: Colors.white, size: 16.0, weight: FontWeight.w700),
        ),
        actions: [
          PopupMenuButton<VertMenuItem>(
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.white,
            ),
            onSelected: (item) {
              if (item == VertMenuItem.logout) {
                LocalStorageService.instance.deleteAll();
                context.go('/auth');
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: VertMenuItem.logout,
                  child: Text(
                    'Logout',
                    style: customTextStyle(),
                  ))
            ],
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///section user card
              SizedBox(
                width: double.infinity,
                height: 190.r,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.r, vertical: 16.r),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    color: BaseTheme.userCardBgDefault,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 16.r,
                          left: 16.r,
                          child: Text(
                            '@johndoe123,',
                            style: customTextStyle(
                                color: Colors.white,
                                size: 16.0,
                                weight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              ///about section
              AboutProfileView(),

              ///interest section
              InterestProfileView(),
            ],
          ),
        ),
      ),
    );
  }
}
