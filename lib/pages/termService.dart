import 'package:flutter/material.dart';

class TermService extends StatelessWidget {
  const TermService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Terms of Service",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 48), // Placeholder for the back button
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    "Welcome to Sneaker Shop! By using our services, you agree to the following terms and conditions. Please read them carefully before using our app.\n\n"
                    "1. Acceptance of Terms\n"
                    "By accessing or using our app, you agree to be bound by these terms and conditions. If you do not agree with any part of these terms, you must not use our app.\n\n"
                    "2. User Accounts\n"
                    "You may need to create an account to access certain features of our app. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.\n\n"
                    "3. Product Information\n"
                    "We strive to provide accurate product descriptions and images, but we do not warrant that the product details are error-free or complete.\n\n"
                    "4. Orders and Payments\n"
                    "All orders are subject to availability and acceptance. We reserve the right to refuse or cancel any order at our discretion.\n\n"
                    "5. Returns and Refunds\n"
                    "Please refer to our return policy for information on how to return products and request refunds.\n\n"
                    "6. Intellectual Property\n"
                    "All content in our app, including text, graphics, logos, and images, is the property of Sneaker Shop or its licensors and is protected by copyright laws.\n\n"
                    "7. Limitation of Liability\n"
                    "Sneaker Shop shall not be liable for any direct, indirect, incidental, special, or consequential damages arising from your use of the app.\n\n"
                    "8. Changes to Terms\n"
                    "We reserve the right to modify these terms at any time. Your continued use of the app after any changes indicates your acceptance of the new terms.\n\n"),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20, top: 15),
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Agree',
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Diagree'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
