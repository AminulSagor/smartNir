import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(
          children: [
            Transform.translate(
                offset: const Offset(-60, -40),
                child: Transform.scale(
                    scale: 1.4,
                    child: Transform.rotate(
                      angle: -0.2,
                      child: ClipOval(
                        child: Container(
                          width: 700,
                          height: 282,
                          color: const Color(0xFF6159FC),
                        ),
                      ),
                    ))),
            Positioned.fill(
              child: Transform.scale(
                scale: 0.4,
                child: Transform.translate(
                  offset: const Offset(-150, 0),
                  child: SvgPicture.asset(
                    'assets/svg/app_logo.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Please enter OTP sent to your\nmobile phone',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF10243E),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'OTP',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF49617E),
                    ),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Enter OTP here',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 46,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6159FC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Submit OTP',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(height: 24,),
              const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Didn’t receive or missed it?',
                      style:
                      TextStyle(fontSize: 14, color: Color(0xFF1A314E)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Resend',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6159FC),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 167,),
              const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style:
                      TextStyle(fontSize: 14, color: Color(0xFF1A314E)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Open Now',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6159FC),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
