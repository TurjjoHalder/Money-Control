//Bank Card
import 'package:flutter/material.dart';

class BankCardWidget extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String bankName;

  const BankCardWidget({
    super.key,
    this.cardNumber = '4567',
    this.cardHolder = 'STUDENT NAME',
    this.expiryDate = '12/28',
    this.bankName = 'BANK',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      elevation: 10,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(192, 35, 41, 43),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -50,
              left: 200,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(50),
                  gradient: RadialGradient(
                    colors: [
                      const Color.fromARGB(221, 56, 123, 248),

                      const Color.fromARGB(2, 56, 123, 248),
                      const Color.fromARGB(1, 56, 123, 248),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              left: -40,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(50),
                  gradient: RadialGradient(
                    colors: [
                      const Color.fromARGB(221, 48, 238, 252),

                      const Color.fromARGB(2, 64, 193, 202),
                      const Color.fromARGB(1, 64, 193, 202),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(176, 0, 0, 0),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Top row: chip + bank name
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Chip
                      Container(
                        height: 35,
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9B121),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      // Bank name
                      Text(
                        bankName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),

                  // Card number
                  Text(
                    '$cardNumber  ****  ****  1234',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  // Bottom row: card holder + expiry
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'CARD HOLDER',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 10,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            cardHolder,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'EXPIRES',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 10,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            expiryDate,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
