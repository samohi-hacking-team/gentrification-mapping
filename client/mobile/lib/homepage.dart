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
              StaggeredTile.count(1, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(2, 1),
              StaggeredTile.count(2, .5),
            ],
            children: [
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff3b8bc4),
                onPressed: () {},
                child: Text(
                  "SMH",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff3b8bc4),
                onPressed: () {},
                child: Text(
                  "SMH",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff3b8bc4),
                onPressed: () {},
                child: Text(
                  "SMH",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff3b8bc4),
                onPressed: () {},
                child: Text(
                  "SMH",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.white),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: Color(0xff3b8bc4),
                onPressed: () {},
                child: Text(
                  "SMH",
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
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
          ),
          padding: EdgeInsets.all(10),
        )
      ]),
    );
  }
}
