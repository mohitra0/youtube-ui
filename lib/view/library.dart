import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube/view/loading.dart';
import 'package:youtube/view/videowidget.dart';

class Library extends StatefulWidget {
  const Library({Key key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: Colors.grey,
              ))),
              margin: EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.width * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: post.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> document =
                        new Map<String, dynamic>.from(post[index]);

                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 7,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.transparent, width: 1),
                                  color: Colors.white,
                                ),
                                child: ClipRRect(
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.network(
                                    document['url'],
                                    filterQuality: FilterQuality.none,
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    gaplessPlayback: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.5,
                            ),
                            Container(
                              width: 150,
                              child: Text(
                                document['caption'],
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.031),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              width: 70,
                              child: Text(
                                document['title'],
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.031),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.history,
                ),
                onPressed: () {},
              ),
              title: Text(
                'History',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.041),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.video_library,
                ),
                onPressed: () {},
              ),
              title: Text(
                'My Videos',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.041),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.file_download,
                ),
                onPressed: () {},
              ),
              title: Text(
                'Downloads',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.041),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.watch_later,
                ),
                onPressed: () {},
              ),
              title: Text(
                'Watch Later',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.041),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: Colors.grey,
              ))),
              margin: EdgeInsets.only(top: 5),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Playlists',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.041),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    child: Text(
                      'Recently added',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.041),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              title: Text(
                'New playlist',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: MediaQuery.of(context).size.width * 0.041),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ));
  }
}

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
