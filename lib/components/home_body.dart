import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone/components/profile_icon.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      children: const [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileIcon(iconSize: 24),
            // Gap(8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Gap(4),
                      Text(
                        '@User ID',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Gap(4),
                      Text(
                        'dd/month',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Tweetの内容を表示。なお、画面端で改行されるようにしている。例えば、日本語のような全角であれば文字単位で改行されるが、if it is half-width, such as English, the line is properly broken based on whitespace. ',
                    maxLines: null, //ワンチャンまずいことになるかも
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  //reply, retweet, good, option?ボタンの作成
                  Padding(
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
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
