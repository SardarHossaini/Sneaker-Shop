import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sneaker_shop/const.dart';
import 'package:sneaker_shop/introPage.dart';

class AdvancedOutBoarding extends StatefulWidget {
  const AdvancedOutBoarding({super.key});

  @override
  State<AdvancedOutBoarding> createState() => _AdvancedOutBoardingState();
}

class _AdvancedOutBoardingState extends State<AdvancedOutBoarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPageModel> _pages = [
    OnboardingPageModel(
      title: "Welcome to Sneaker Shop",
      description:
          "Discover the latest trends in sneakers and footwear from top brands worldwide. Find your perfect fit with our curated collection.",
      imageUrl: "assets/images/logo.png",
      features: ["10,000+ Styles", "Premium Brands", "Exclusive Drops"],
    ),
    OnboardingPageModel(
      title: "Discover Your Style",
      description:
          "From casual everyday wear to limited edition collectibles, explore our vast selection. We have something for every taste and occasion.",
      imageUrl: "assets/images/screen1.jpg",
      features: ["Casual & Sports", "Limited Editions", "Style Matching"],
    ),
    OnboardingPageModel(
      title: "Fast & Secure Shopping",
      description:
          "Enjoy lightning-fast delivery, easy returns, and secure payment options. Your satisfaction is our top priority.",
      imageUrl: "assets/images/screen2.jpg",
      features: ["2-Day Delivery", "Easy Returns", "Secure Payments"],
    ),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE3F2FD), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Skip Button
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: _currentPage == _pages.length - 1 ? 0 : 1,
                    child: TextButton(
                      onPressed: _goToIntro,
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: primaryBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // PageView
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (i) => setState(() => _currentPage = i),
                  itemCount: _pages.length,
                  itemBuilder: (_, index) =>
                      _ResponsivePage(page: _pages[index]),
                ),
              ),

              // Footer
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    final double buttonHeight =
        MediaQuery.of(context).size.height > 700 ? 56 : 48;

    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: _pageController,
            count: _pages.length,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: primaryBlue,
              dotColor: Colors.grey.shade300,
              expansionFactor: 3,
              spacing: 7,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: buttonHeight,
            child: ElevatedButton(
              onPressed: () {
                if (_currentPage < _pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                } else {
                  _goToIntro();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryBlue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 5,
                shadowColor: primaryBlue.withOpacity(0.3),
              ),
              child: Text(
                _currentPage == _pages.length - 1 ? "Get Started" : "Continue",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _goToIntro() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const IntroPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c),
      ),
    );
  }
}

// ──────────────────────────────────────────────────────────────
// Responsive page content (no overflow!)
class _ResponsivePage extends StatelessWidget {
  final OnboardingPageModel page;
  const _ResponsivePage({required this.page});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;
        final double imageSize = maxWidth * 0.72; // ~230 dp

        return SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image
                    Container(
                      width: imageSize,
                      height: imageSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: primaryBlue.withOpacity(0.15),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          page.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Title (gradient + responsive)
                    SizedBox(
                      width: double.infinity,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: ShaderMask(
                          shaderCallback: (b) => const LinearGradient(
                            colors: [primaryBlue, secondaryColor],
                          ).createShader(b),
                          child: Text(
                            page.title,
                            style: const TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Main Description
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        page.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          height: 1.6,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Features List
                    _buildFeaturesList(),

                    // Bottom spacer to push content up on small screens
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFeaturesList() {
    return Column(
      children: [
        ...page.features.map((feature) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: primaryBlue,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    feature,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

// ──────────────────────────────────────────────────────────────
class OnboardingPageModel {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> features;

  OnboardingPageModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.features,
  });
}
