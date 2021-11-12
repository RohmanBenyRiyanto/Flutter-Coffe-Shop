import 'package:coffeshop/Detail%20Order/detail_order.dart';
import 'package:coffeshop/components/button.dart';
import 'package:coffeshop/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shadowed_image/shadowed_image.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                child: ShadowedImage(
                  blurRadius: 16.0,
                  offset: Offset(-10, -5),
                  scale: 1.0,
                  image: Image.asset(
                    'assets/images/image_3.png',
                    height: 230.00,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'Sweet &\nNaise Coffee',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: AppTheme.primaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Naise Coffee can change The\natmosphere  in the morning',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: AppTheme.textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              CustomElevation(
                height: 55,
                // ignore: deprecated_member_use
                child: FlatButton(
                  shape: StadiumBorder(),
                  color: AppTheme.primaryColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailOrder()),
                    );
                    print('Order Now Clicked');
                  },
                  child: Text(
                    'ORDER NOW',
                    style: GoogleFonts.poppins(
                      color: AppTheme.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
