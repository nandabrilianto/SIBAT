class TsunamiData{
    String id;
    BigInt tweetId;

    TsunamiData({this.id, this.tweetId});

    String get tsunamiId { 
      return id; 
    }
    
    set tsunamiId(String id) { 
      this.id = id; 
    }

    BigInt get tsunamiTweetId { 
      return tweetId; 
    } 
    
    set tsunamiTweetId(BigInt tweetId) { 
      this.tweetId = tweetId; 
    }

    factory TsunamiData.fromJson(Map<String, dynamic> json) {
    return TsunamiData(
      id: json['id'],
      tweetId: BigInt.from(int.parse(json['tweet_id'])),
    );
  }
}