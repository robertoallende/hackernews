class Article{

  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentsCount;

  const Article({
    this.text,
    this.domain,
    this.by,
    this.age,
    this.score,
    this.commentsCount
  });
}

final articles = [
  new Article(
    text:
      "Microplastics found in 93% of bottled water tested in global study (cbc.ca)",
    domain:
      "cbc.ca",
    by:
      "simonebrunozzi",
    age:
      "13 hours ago",
    score:
      639,
    commentsCount:
      307
  ),
  new Article(
      text:
      "The Fugate family of Kentucky has had blue skin for centuries",
      domain:
      "allthatsinteresting.com",
      by:
      "heshiebee",
      age:
      "10 hours ago",
      score:
      221,
      commentsCount:
      54
  ),
  new Article(
      text:
      "Science’s pirate queen",
      domain:
      "theverge.com",
      by:
      "ColinWright",
      age:
      "9 hours ago",
      score:
      47,
      commentsCount:
      49
  ),
  new Article(
      text:
      "I built a wind map with WebGL (2017)",
      domain:
      "mapbox.com",
      by:
      "bhousel",
      age:
      "5 hours ago",
      score:
      47,
      commentsCount:
      7
  ),
  new Article(
      text:
      "Rudder, an open source Segment alternative",
      domain:
      "github.com",
      by:
      "feross",
      age:
      "8 hours ago",
      score:
      173,
      commentsCount:
      63
  ),
  new Article(
      text:
      "Modern Script Loading",
      domain:
      "jasonformat.com",
      by:
      "fagnerbrack",
      age:
      "8 hours ago",
      score:
      51,
      commentsCount:
      9
  ),
  new Article(
      text:
      "Dog-walking startup Wag raised 300M, then things got messy",
      domain:
      "cnn.com",
      by:
      "danso",
      age:
      "12 hours ago",
      score:
      210,
      commentsCount:
      202
  ),
  new Article(
      text:
      "SNES Cartridges and Enhancement Chips",
      domain:
      "twitter.com",
      by:
      "hide",
      age:
      "12 hours ago",
      score:
      210,
      commentsCount:
      84
  ),
  new Article(
      text:
      "Men Are Waiting to Share Some Feelings (2018)",
      domain:
      "nytimes.com",
      by:
      "ignored",
      age:
      "10",
      score:
      232,
      commentsCount:
      30
  ),
  new Article(
      text:
      "On Sharding",
      domain:
      "tbray.org",
      by:
      "Isofarro",
      age:
      "12",
      score:
      154,
      commentsCount:
      12
  ),
  new Article(
      text:
      "Cash/Consent: The war on sex work",
      domain:
      "nplusonemag.com",
      by:
      "Spellman",
      age:
      "12",
      score:
      217,
      commentsCount:
      189
  )
];



