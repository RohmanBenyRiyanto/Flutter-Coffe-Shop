import 'package:badges/badges.dart';
import 'package:coffeshop/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailOrder extends StatefulWidget {
  DetailOrder({Key? key}) : super(key: key);
  static String routeName = "/detail";

  @override
  _DetailOrderState createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  List<bool> isSelected = [true, false, false];
  List<String> sizelist = ["S", "M", "L"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
        title: new Text(''),
        leading: new IconButton(
          icon: SvgPicture.asset(
            'assets/svg/arrow_back.svg',
          ),
          //Menangani kejadian saat menu home diklik
          onPressed: () {
            Navigator.pop(context);
            print('Back Clicked');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: new IconButton(
              icon: SvgPicture.asset(
                'assets/svg/Dots.svg',
              ),
              onPressed: () {}, //do something,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 12, bottom: 12),
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 295,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Image.asset(
                    'assets/images/image_6.png',
                    height: 200,
                  ),
                  SizedBox(height: 5),
                  new Text(
                    'Caramel Macchiato',
                    style: GoogleFonts.poppins(
                      color: AppTheme.primaryColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  new Text(
                    'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: AppTheme.textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SIZE',
                    style: GoogleFonts.poppins(
                      color: AppTheme.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Ink(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      primary: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 28,
                      childAspectRatio: 1.4,
                      children: List.generate(
                        isSelected.length,
                        (index) {
                          return InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              //set the toggle logic
                              setState(
                                () {
                                  for (int indexBtn = 0;
                                      indexBtn < isSelected.length;
                                      indexBtn++) {
                                    if (indexBtn == index) {
                                      isSelected[indexBtn] = true;
                                    } else {
                                      isSelected[indexBtn] = false;
                                    }
                                  }
                                },
                              );
                            },
                            child: Ink(
                              height: 60,
                              decoration: BoxDecoration(
                                color: isSelected[index]
                                    ? AppTheme.primaryColor
                                    : AppTheme.backgroundColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1.0, color: AppTheme.primaryColor),
                              ),
                              child: Center(
                                child: Text(
                                  sizelist[index],
                                  style: GoogleFonts.poppins(
                                    color: isSelected[index]
                                        ? AppTheme.whiteColor
                                        : AppTheme.primaryColor,
                                    fontSize: 24,
                                    fontWeight: isSelected[index]
                                        ? FontWeight.w600
                                        : FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    'COMBO',
                    style: GoogleFonts.poppins(
                      color: AppTheme.blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Container(
                    padding: EdgeInsets.all(20),
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppTheme.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5.0,
                          offset: Offset(0, 25 / 5),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        new Image.asset(
                          'assets/images/croissant.png',
                          height: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CROISSANT',
                              style: GoogleFonts.poppins(
                                  color: AppTheme.blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/star yellow.svg',
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/svg/star yellow.svg',
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/svg/star yellow.svg',
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/svg/star yellow.svg',
                                      height: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/svg/star_grey.svg',
                                      height: 10,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    '4.8',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.shade400,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Container(
                          height: 26,
                          width: 26,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: AppTheme.plusbuttonColor,
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(0),
                              elevation: 0.5,
                            ),
                            onPressed: () {
                              print('add clicked');
                            },
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: AppTheme.primaryColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      new Badge(
                        position: BadgePosition.topEnd(top: -10, end: -15),
                        badgeColor: AppTheme.backgroundColor,
                        borderSide: BorderSide(
                            width: 1.5, color: AppTheme.primaryColor),
                        badgeContent: Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          child: Center(
                            child: Text(
                              '3',
                              style: GoogleFonts.poppins(
                                  color: AppTheme.blackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1.5, color: AppTheme.primaryColor),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg/bag.svg',
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Add Bags');
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          height: 55,
                          width: 220,
                          decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'ADD TO BAG ',
                                style: GoogleFonts.poppins(
                                    color: AppTheme.whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Container(
                                  width: 1.5,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: AppTheme.shadowColor,
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                              ),
                              Text(
                                r"$5.99",
                                style: GoogleFonts.poppins(
                                    color: AppTheme.whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
