import 'package:flutter/material.dart';
import 'package:flutter_app_ui_assignment/widgets/widgets.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
          
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'My Cards',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Placeholder for card details
              BankCardWidget(
                cardNumber: '4567',
                cardHolder: 'Turjjo Halder',
                expiryDate: '12/28',
                bankName: 'BANK',
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton.actionButton(Icons.cancel_outlined, "Block"),
                  ActionButton.actionButton(Icons.credit_card, "Details"),
                  ActionButton.actionButton(Icons.info_outlined, "Limit"),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Linked Accounts',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text('Shared Savings',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1A2E),
                          ),),
                  subtitle: Text('\$10,500',),
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 219, 234, 254),
                    child: Text(
                          "S",
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 99, 235),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                  ),
                  trailing: Icon( Icons.arrow_forward, size: 25, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
