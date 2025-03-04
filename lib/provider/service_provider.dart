import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/model/tweet_model.dart';
import 'package:twitter_clone/services.dart/twitter_service.dart';

final serviceProvider = StateProvider<TwitterService>((ref) {
  return TwitterService();
});

final fetchStreamProvider = StreamProvider<List<TweetModel>>((ref) async* {

  final getData = FirebaseFirestore.instance
      .collection('twitterClone')
      .orderBy('date', descending: true)
      .snapshots()
      .map(
        (event) => event.docs
            .map((snapshot) => TweetModel.fromSnapshot(
                snapshot as DocumentSnapshot<Map<String, dynamic>>))
            .toList(),
      );

  yield* getData;
});
