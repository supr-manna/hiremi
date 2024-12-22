import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiremi/screens/components/common_appbar.dart';
import 'package:hiremi/screens/components/gradient_button.dart';
import 'package:hiremi/screens/corporate_subscribe.dart';
import 'components/gradient_card.dart';

class UnimentorsSubscribe extends StatefulWidget {
  const UnimentorsSubscribe({super.key});

  @override
  State<UnimentorsSubscribe> createState() => _UnimentorsSubscribeState();
}

class _UnimentorsSubscribeState extends State<UnimentorsSubscribe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppbar(
          title: 'Unimentors',
          gradientColor: const [Color(0xFF0075FF), Color(0xFFC1272D)],
          onBackPressed: () {}),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12.0),
              Center(
                child: Image.asset('assets/images/ic_violate_walet.png',
                    height: 180.0, width: 177.0),
              ),
              SizedBox(height: 12.0),
              Text('Hiremi 360 Unimentor',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              SizedBox(height: 10.0),
              Text(
                'The Hiremi 360° Mentorship Program guides you through your college journey with expert mentors, career advice, and a guaranteed internship in your preferred field, ensuring both academic and professional success.',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 20),
              const GradientCard(
                  gradientColors: [Color(0xFFA92AB4), Color(0xFF4720A3)],
                  title: 'Subscribe to this mentorship\nprogram',
                  price: '10,000',
                  discountPrice: '25,000',
                  offPercentage: '40',
                  textLines: [
                    'Certificate of completion',
                    'Working on live projects',
                    'Portfolio Building',
                    'Guaranteed Internship with client Companies'
                  ]),
              const SizedBox(height: 45),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/ic_lock.png'),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text:
                            'By enrolling, you agree to be charged the amount shown, plus applicable taxes, starting today. You also agree to Hiremi',
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Terms of Use, Refund Policy,',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFC1272D),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {},
                          ),
                          const TextSpan(text: ' and acknowledge our'),
                          TextSpan(
                            text: ' Privacy Notice',
                            style: GoogleFonts.poppins(
                              color: Color(0xFFC1272D),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {},
                          ),
                          TextSpan(
                              text: 'Please note that no refunds are available for purchases made through the Play Store. You will receive a confirmation email upon completion.',
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 35),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: GradientButton(
                    text: "Enroll Now",
                    gradientColors: [Color(0xFFA92AB4), Color(0xFF4720A3)],
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CorporateSubscribe()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
