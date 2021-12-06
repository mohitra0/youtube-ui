import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/view/loading.dart';
import 'package:youtube/view/videowidget.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({Key key}) : super(key: key);

  @override
  _SubscriptionsState createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Image.asset(
            'assets/youtube.png',
            width: 98.0,
            height: 22.0,
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset(
                'assets/device.png',
                width: 23,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.bell,
                size: 23,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    'https://instagram.fdel11-2.fna.fbcdn.net/v/t51.2885-19/s320x320/262902836_135320635536682_7269523556471284265_n.jpg?_nc_ht=instagram.fdel11-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=C4UePLuwRW0AX9TrKDH&edm=ABfd0MgBAAAA&ccb=7-4&oh=cce2409cb4988bc69eaa9036fba29d6f&oe=61B460AB&_nc_sid=7bff83'),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: post.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> documentpost =
                  new Map<String, dynamic>.from(post[post.length - index - 1]);
              if (index == 0) {
                return Container(
                  margin: EdgeInsets.only(top: 5),
                  height: MediaQuery.of(context).size.width * 0.2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: story.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> document =
                            new Map<String, dynamic>.from(
                                story[story.length - index - 1]);

                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 7,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: Colors.white, width: 1),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: Colors.transparent, width: 1),
                                      color: Colors.white,
                                    ),
                                    child: ClipRRect(
                                      clipBehavior: Clip.hardEdge,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      child: Image.network(
                                        document['url'],
                                        filterQuality: FilterQuality.none,
                                        fit: BoxFit.cover,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.14,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.14,
                                        gaplessPlayback: true,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3.5,
                                ),
                                Container(
                                  width: 70,
                                  child: Text(
                                    document['name'],
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.031),
                                    ),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }
              if (index == 1) {
                return Container(
                  height: MediaQuery.of(context).size.width * 0.15,
                  child: ListView(
                    padding: EdgeInsets.only(left: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'All',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Today',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Continue watching',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Unwatched',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Live',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Posts',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              'Settings',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }
              return Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent, width: 1),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        child: CachedNetworkImage(
                          filterQuality: FilterQuality.none,
                          fit: BoxFit.fitWidth,
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          imageUrl: documentpost['url'],
                          placeholder: (context, url) => Loading(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                story[index]['url'],
                                filterQuality: FilterQuality.none,
                                fit: BoxFit.fitWidth,
                                width: MediaQuery.of(context).size.width * 0.1,
                                height: MediaQuery.of(context).size.width * 0.1,
                                gaplessPlayback: true,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 0),
                                    child: Text(
                                      '${documentpost['caption']}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 0),
                                    child: Text(
                                      documentpost['title'],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.black,
                                size: 25,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              );
            }));
  }
}

List story = [
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLR3uHlD-z_JoaGtAPHXtrbd66fa0a9q8A3w1giLbA=s88-c-k-c0x00ffffff-no-rj',
    'name': 'Valorant',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLQaM-ZSE6WX8uhTZnlRWzmgcCySyMbKKnTyV8C4=s88-c-k-c0x00ffffff-no-rj',
    'name': 'Ronnit',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLRjW77DzAQyGuXfC6Rgd2gh1zfckc5uJzKT_-fK=s88-c-k-c0x00ffffff-no-rj',
    'name': 'Alpaman',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/2_7lGtqteK7zVldw_NddyVJl5mYWIHruplXYNXKo-pKAW7LSZ17ZBoN43ut1ZvQjiQIw5u_QYg=s88-c-k-c0x00ffffff-no-rj',
    'name': 'callmemaybe',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLSow0ZFWUxs42VHeF9okBlTyFflYAPyAOh4eWSXDA=s88-c-k-c0x00ffffff-no-rj',
    'name': 'elon musk',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLQVPJGz7OrblaKq8e8jSq9g9_IR4C56YpXp4hto7Q=s88-c-k-c0x00ffffff-no-rj',
    'name': 'mohitrao',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s88-c-k-c0x00ffffff-no-rj',
    'name': 'Johnathan',
    'seem': false,
  },
  {
    'url':
        'https://yt3.ggpht.com/ytc/AKedOLSQqvHmxCKwhh49VWheDyNLrrhYOIH3jgiCxSQZ=s88-c-k-c0x00ffffff-no-rj',
    'name': 'jassie',
    'seem': false,
  },
];
List post = [
  {
    'url':
        'https://i.ytimg.com/vi/qRWpb-UAOlE/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCrEG4nlK4czVZ7ZePX2uu7TEAbxA',
    'title': 'jasonwally • DJ Snake • 2 weeks ago',
    'caption':
        'The DJ, songwriter, producer and high school student is the youngest artist to ever perform at Lollapalooza, plus the youngest — and one of the first trans artists — to take the stage at Electric Daisy Carnival in Las Vegas.⁣',
  },
  {
    'url':
        'https://i.ytimg.com/vi/HawhjjF5qFc/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAqN95yIXpG8CCIUp2znQrn9sTJsQ',
    'title': 'chennai • Marqueus Brownlee • 1 weeks ago',
    'seem': false,
    'caption':
        'The DJ, songwriter, producer and high school student is the youngest artist to ever perform at Lollapalooza, plus the youngest — and one of the first trans artists — to take the stage at Electric Daisy Carnival in Las Vegas.⁣',
  },
  {
    'url':
        'https://i.ytimg.com/vi/BbXJ3_AQE_o/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAKXZFyxes5BkpZqy9qUggGZarMXg',
    'title': 'moveron • Justic timber • 2 years ago',
    'seem': false,
    'caption':
        'The DJ, songwriter, producer and high school student is the youngest artist to ever perform at Lollapalooza, plus the youngest — and one of the first trans artists — to take the stage at Electric Daisy Carnival in Las Vegas.⁣',
  },
  {
    'url':
        'https://i.ytimg.com/vi/mr7FXvTSYpA/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBTE4hLWsvGSjICMKFRWtZPjrBvNQ',
    'title': 'Messi ft • Mohit rao • 5 days ago',
    'seem': false,
    'caption':
        'Verified Looks like we’re not the only ones looking toward the weekend. 🌈 👀 🌈⁣⁣Peep our story right now for more things that made us smile and look twice this week.⁣'
  },
  {
    'url':
        'https://i.ytimg.com/vi/jms-y1u4MV8/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAAlYXPu5elalXyJmNs2r5c5_6qjw',
    'title': 'Elizzabteh • Animals• 9 weeks ago',
    'seem': false,
    'video': true,
    'caption':
        '“In addition to receiving a monetary grant, each recipient will connect with a community of mentors chosen with the support of the #BlackDesignVisionaries committee and partner organizations.⁣”',
  },
  {
    'url':
        'https://i.ytimg.com/vi/FfcI1nTGOug/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBBEHyrJobVpw2fSxNoxhPao1UmBw',
    'title': 'Developer • Ronaldo • 1 weeks ago',
    'seem': false,
    'video': true,
    'caption':
        '“I don’t think I would have gotten where I am today without the help of Black designers in my life — Black creatives, Black people,”',
  },
  {
    'url':
        'https://i.ytimg.com/vi/ow7f6nxcYNw/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCMIGuVRO06lYcBj37LTX4UqwJMNw',
    'title': 'Selena gomez • DJ Snake • 2 weeks ago',
    'seem': false,
    'video': true,
    'caption':
        'I see my makeup as a new painting every morning; sometimes I opt for something experimental and guided by my emotions, other days I try more dramatic and extravagant styles,” says the 20-year-old creator. “I start to paint how I feel that day.',
  },
  {
    'url':
        'https://i.ytimg.com/vi/WhVXkCFPmK4/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA4myejhFDh75bx66OffGugb9VbZA',
    'title': 'Taki Taki ft • Sendme • 52 weeks ago',
    'seem': false,
    'caption':
        "Naysha started out posting her art on Instagram (@artsysushiroll), but now also makes small skits, dance and fashion content and relatable videos about her daily life.⁣"
  },
];
