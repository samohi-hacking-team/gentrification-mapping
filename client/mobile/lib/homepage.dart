import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: Text("Gentrification in the USA"),
        ),
        SliverPadding(
          sliver: SliverStaggeredGrid.count(
            crossAxisCount: 2,
            staggeredTiles: [
              StaggeredTile.count(1, 1.5),
              StaggeredTile.count(1, .75),
              StaggeredTile.count(1, .75),
              StaggeredTile.count(2, .5),
              StaggeredTile.count(2, .5),
            ],
            children: [
              FlatButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff5FC9F8),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "View Nationwide Map",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                  ],
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xffFECB2E),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Gentrification information",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                  ],
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xffFC3158),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Sources",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                  ],
                ),
              ),

              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff53D769),
                onPressed: ()=>Share,
                child: Text(
                  "Share",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff147EFB),
                onPressed: () => showAboutDialog(
                  context: context,
                  applicationName: "Gentrification in the USA",
                  applicationLegalese: "Isabelle Wagenvoord, Benjamin Swerdlow, Jessica Golden, Jason Telanoff, and Alana Ginter designed this app to help make information about gentrification and displacement more accessible so we can start finding solutions for it."
                ),
                child: Text(
                  "About the app",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
              )

              // PageButton(
              //   Color(0xff3b8bc4),
              //   S.of(context).protectYourself,
              //   () => Navigator.of(context).push(
              //       MaterialPageRoute(builder: (c) => ProtectYourself())),
              // ),
              // PageButton(
              //   Color(0xfff6c35c),
              //   "Latest\nNumbers",
              //   () => Navigator.of(context).push(
              //       MaterialPageRoute(builder: (c) => ProtectYourself())),
              // ),
              // PageButton(
              //   Color(0xffbe7141),
              //   "Your\nQuestions\nAnswered",
              //   () => Navigator.of(context).push(
              //       MaterialPageRoute(builder: (c) => ProtectYourself())),
              // ),
              // PageButton(
              //   Color(0xff234689),
              //   S.of(context).whoMythBusters,
              //   () => Navigator.of(context).push(
              //     MaterialPageRoute(builder: (c) => WhoMythBusters()),
              //   ),
              //   description:
              //       "Learn the facts about Coronavirus and how to prevent the spread",
              //   centerItems: true,
              // ),
              // PageButton(
              //   Color(0xffba4344),
              //   S.of(context).travelAdvice,
              //   () => Navigator.of(context)
              //       .push(MaterialPageRoute(builder: (c) => TravelAdvice())),
              //   borderRadius: 50,
              //   centerItems: true,
              // ),
            ],
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
          ),
          padding: EdgeInsets.all(15),
        )
      ]),
    );
  }
}
