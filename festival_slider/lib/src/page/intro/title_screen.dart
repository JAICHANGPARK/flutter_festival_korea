import 'package:festival_slider/src/component/slider/slider_master_title_component.dart';
import 'package:festival_slider/src/utils/asset_manager.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => GoRouter.of(context).go("/home"),
        child: SliderMasterTitleComponent(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AssetManager.kSliderLogoColor,
                  height: 72,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Flutter Embedded",
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "데스크톱을 넘어 임베디드까지",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 58,
                      backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/19484515?v=4"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "박제창 - (주)엔젤로보틱스",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "@jaichangpark",
                            style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: kSecondaryColor,
                                ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
