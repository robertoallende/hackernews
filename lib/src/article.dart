class Article{

  final String title;
  final String url;
  final String by;
  final int time;
  final int score;

  const Article({
    this.title,
    this.url,
    this.by,
    this.time,
    this.score
  });

  factory Article.fromJson(Map<String,dynamic> jsonString){
    if (jsonString == null)
      return null;

    return Article(
      title: jsonString['title']?? '[title]',
      url: jsonString['url']?? '[text]',
      by: jsonString['by']?? '[text]',
      time: jsonString['time']?? 2121,
      score: jsonString['score']?? 1111,
    );
  }
}

final articles = [
  new Article(
      title:
      "Microplastics found in 93% of bottled water tested in global study (cbc.ca)",
      url:
      "cbc.ca",
      by:
      "simonebrunozzi",
      time:
      1121,
      score:
      639
  ),
  new Article(
      title:
      "The Fugate family of Kentucky has had blue skin for centuries",
      url:
      "allthatsinteresting.com",
      by:
      "heshiebee",
      time:
      1121,
      score:
      221
  ),
  new Article(
      title:
      "Science’s pirate queen",
      url:
      "theverge.com",
      by:
      "ColinWright",
      time:
      1121,
      score:
      47
  ),
  new Article(
      title:
      "I built a wind map with WebGL (2017)",
      url:
      "mapbox.com",
      by:
      "bhousel",
      time:
      1212,
      score:
      47
  ),
  new Article(
      title:
      "Rudder, an open source Segment alternative",
      url:
      "github.com",
      by:
      "feross",
      time:
      1211,
      score:
      173
  ),
  new Article(
      title:
      "Modern Script Loading",
      url:
      "jasonformat.com",
      by:
      "fagnerbrack",
      time:
      1121,
      score:
      51
  ),
  new Article(
      title:
      "Dog-walking startup Wag raised 300M, then things got messy",
      url:
      "cnn.com",
      by:
      "danso",
      time:
      1212,
      score:
      210
  ),
  new Article(
      title:
      "SNES Cartridges and Enhancement Chips",
      url:
      "twitter.com",
      by:
      "hide",
      time:
      1211,
      score:
      210
  ),
  new Article(
      title:
      "Men Are Waiting to Share Some Feelings (2018)",
      url:
      "nytimes.com",
      by:
      "ignored",
      time:
      1211,
      score:
      232
  ),
  new Article(
      title:
      "On Sharding",
      url:
      "tbray.org",
      by:
      "Isofarro",
      time:
      1211,
      score:
      154
  ),
  new Article(
      title:
      "Cash/Consent: The war on sex work",
      url:
      "nplusonemag.com",
      by:
      "Spellman",
      time:
      1212,
      score:
      217
  )
];
