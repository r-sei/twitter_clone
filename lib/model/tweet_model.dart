import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TweetModel {
  String? tweetID;
  final String userID;
  final String userName;
  final Timestamp date;
  final String tweetText;
  final bool good;
  final bool reTweet;
  final int goodCount;
  final int replyCount;
  final int reTweetCount;

  TweetModel({
    this.tweetID,
    required this.userID,
    required this.userName,
    required this.date,
    required this.tweetText,
    required this.good,
    required this.reTweet,
    required this.goodCount,
    required this.replyCount,
    required this.reTweetCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tweetID': tweetID,
      'userID': userID,
      'userName': userName,
      'date': date,
      'tweetText': tweetText,
      'good': good,
      'reTweet': reTweet,
      'goodCount': goodCount,
      'replyCount': replyCount,
      'reTweetCount': reTweetCount,
    };
  }

  factory TweetModel.fromMap(Map<String, dynamic> map) {
    return TweetModel(
      tweetID: map['tweetID'] != null ? map['tweetID'] as String : null,
      userID: map['userID'] as String,
      userName: map['userName'] as String,
      date: map['date'] as Timestamp,
      tweetText: map['tweetText'] as String,
      good: map['good'] as bool,
      reTweet: map['reTweet'] as bool,
      goodCount: map['goodCount'] as int,
      replyCount: map['replyCount'] as int,
      reTweetCount: map['reTweetCount'] as int,
    );
  }

  factory TweetModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TweetModel(
      tweetID: doc.id,
      userID: doc['userID'],
      userName: doc['userName'],
      date: doc['date'],
      tweetText: doc['tweetText'],
      good: doc['good'],
      reTweet: doc['reTweet'],
      replyCount: doc['replyCount'],
      goodCount: doc['goodCount'],
      reTweetCount: doc['reTweetCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TweetModel.fromJson(String source) =>
      TweetModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
