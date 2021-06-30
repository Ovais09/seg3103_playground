public class Twitter {

  public String loadTweet() {
    try {
      Thread.sleep(4000);
    } catch (InterruptedException e) {}

    double r =  Math.random();
    if (r <= 0.45) {
      return "I am tweet that likes to talk about @me";
    } else if (r <= 0.9) {
      return "Hello to @you";
    } else {
      return null;
    }
  }

  public boolean isMentionned(String name) {
    String tweet = loadTweet();

    if (tweet == null) {
      return false;
    }

    String tweetV2  = tweet;

    String substringFirst = tweetV2 .substring(0,tweetV2.indexOf("@"));

    String substringFinal = tweetV2.substring(substringFirst.length()+1, tweetV2.length());




    return substringFinal.equals(name);

  }

}