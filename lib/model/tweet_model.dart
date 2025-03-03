import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TweetModel {
  String? tweetID;
  final String userID;
  final String userName;
  final String date;
  final String tweetText;
  final bool good;
  final bool reTweet;
  TweetModel({
    this.tweetID,
    required this.userID,
    required this.userName,
    required this.date,
    required this.tweetText,
    required this.good,
    required this.reTweet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'TweetID': tweetID,
      'UserID': userID,
      'UserName': userName,
      'date': date,
      'tweetText': tweetText,
      'good': good,
      'reTweet': reTweet,
    };
  }

  factory TweetModel.fromMap(Map<String, dynamic> map) {
    return TweetModel(
      tweetID: map['TweetID'] != null ? map['TweetID'] as String : null,
      userID: map['UserID'] as String,
      userName: map['UserName'] as String,
      date: map['date'] as String,
      tweetText: map['tweetText'] as String,
      good: map['good'] as bool,
      reTweet: map['reTweet'] as bool,
    );
  }

  factory TweetModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TweetModel(
      tweetID: doc.id,
      userID: doc['description'],
      userName: doc['titleTask'],
      date: doc['category'],
      tweetText: doc['dateTask'],
      good: doc['timeTask'],
      reTweet: doc['isDone'],
    );
  }
}
