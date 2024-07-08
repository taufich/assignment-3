import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_auth/utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            '- Or Sign In With -',
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        // ignore: sized_box_for_whitespace
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Row(
            children: [
              //Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/google.svg',
                    height: 35,
                  ),
                ),
              ),

              //facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/facebook.svg',
                    height: 40,
                  ),
                ),
              ),

              //github
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/github.svg',
                      height: 40,
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
