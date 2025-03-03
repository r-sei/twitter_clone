import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:twitter_clone/model/tweet_model.dart';

class TwitterService {
  final tweetCollection = FirebaseFirestore.instance.collection('twitterClone');

  void createNewTweet(TweetModel model) {
    tweetCollection.add((model.toMap()));
  }

  void reTweet(String? tweetID, bool? valueReTweet) {
    tweetCollection.doc(tweetID).update({'reTweet': valueReTweet});
  }

  void good(String? tweetID, bool? valueGood) {
    tweetCollection.doc(tweetID).update({'good': valueGood});
  }

  void deleteTweet(String? tweetID) {
    tweetCollection.doc(tweetID).delete();
  }
}
