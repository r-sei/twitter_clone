import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/profile_icon.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileIcon(iconSize: 24),
            const Gap(8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'User Name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Gap(4),
                      const Text(
                        '@User ID',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const Gap(4),
                      const Text(
                        'dd/month',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.more_horiz, size: 20),
                        onPressed: () {}, //今回は見送り
                      ),
                    ],
                  ),
                  const Text(
                    'test',
                    maxLines: null,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const Gap(8),
                  //reply, retweet, good, shareボタンの作成
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(children: [
                            Icon(Icons.chat_outlined),
                            Gap(8),
                            Text('0'),
                          ]),
                        ),
                        Expanded(
                          child: Row(children: [
                            Icon(Icons.autorenew),
                            Gap(8),
                            Text('0'),
                          ]),
                        ),
                        Expanded(
                          child: Row(children: [
                            Icon(Icons.favorite_outline),
                            Gap(8),
                            Text('0'),
                          ]),
                        ),
                        Icon(Icons.share),
                      ],
                    ),
                  ),
                  const Gap(12), // 次のツイートとの間隔
                  const Divider(height: 1, color: Colors.grey),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
