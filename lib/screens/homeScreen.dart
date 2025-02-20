import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_now_mobile/const/app_gaps.dart';
import 'package:shop_now_mobile/const/app_images.dart';

import '../const/app_colors.dart';
import '../utils/helper.dart';
import '../widgets/custom_nav_bar.dart';
import '../screens/individualItem.dart';
import '../widgets/searchBar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/homeScreen";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppGaps.hGap20,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Good morning ${Helper.getUserName()}!",
                            overflow: TextOverflow.ellipsis,
                            style: Helper.getTheme(context).headlineLarge,
                          ),
                        ),
                        Image.asset(Helper.getAssetName("cart.png", "virtual"))
                      ],
                    ),
                  ),
                  AppGaps.hGap20,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Deilivering to"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: "current location",
                          items: const [
                            DropdownMenuItem(
                              child: Text("Current Location"),
                              value: "current location",
                            ),
                            DropdownMenuItem(
                              child: Text("Home"),
                              value: "Home",
                            ),
                            DropdownMenuItem(
                              child: Text("Office"),
                              value: "Office",
                            ),
                            DropdownMenuItem(
                              child: Text("Other"),
                              value: "Other",
                            ),
                          ],
                          icon: Image.asset(
                            Helper.getAssetName(
                                "dropdown_filled.png", "virtual"),
                          ),
                          style: Helper.getTheme(context).headlineMedium,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  SearchBarCustom(
                    title: "Search Items",
                  ),
                  AppGaps.hGap20,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Categories",
                      style: Helper.getTheme(context).headlineLarge,
                    ),
                  ),
                  AppGaps.hGap20,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryCard(
                            image: Image.asset(
                              AppAssetImages.clothingJPG,
                              fit: BoxFit.cover,
                            ),
                            name: "Clothing",
                          ),
                          AppGaps.wGap10,
                          CategoryCard(
                            image: Image.asset(
                              AppAssetImages.shoesJPG,
                              fit: BoxFit.cover,
                            ),
                            name: "Shoes",
                          ),
                          AppGaps.wGap10,
                          CategoryCard(
                            image: Image.asset(
                              AppAssetImages.electronicsJPG,
                              fit: BoxFit.cover,
                            ),
                            name: "Electronics",
                          ),
                          AppGaps.wGap10,
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("hamburger2.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Offers",
                          ),
                          AppGaps.wGap10,
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("rice2.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Sri Lankan",
                          ),
                          AppGaps.wGap10,
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("fruit.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Italian",
                          ),
                          AppGaps.wGap10,
                          CategoryCard(
                            image: Image.asset(
                              Helper.getAssetName("rice.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Indian",
                          ),
                          AppGaps.wGap10,
                        ],
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Popular Brands",
                      style: Helper.getTheme(context).headlineLarge,
                    ),
                  ),
                  AppGaps.hGap20,
                  // shoes brand
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          BrandCard(
                            image: SvgPicture.asset(
                              AppAssetImages.adidasSVG,
                              fit: BoxFit.scaleDown,
                            ),
                            name: "Adidas",
                          ),
                          AppGaps.wGap25,
                          BrandCard(
                            image: SvgPicture.asset(
                              AppAssetImages.nikeSVG,
                              fit: BoxFit.scaleDown,
                            ),
                            name: "Nike",
                          ),
                          AppGaps.wGap25,
                          BrandCard(
                            image: SvgPicture.asset(
                              AppAssetImages.vansSVG,
                              fit: BoxFit.scaleDown,
                            ),
                            name: "Vans",
                          ),
                          AppGaps.wGap25,
                          BrandCard(
                            image: SvgPicture.asset(
                              AppAssetImages.pumaSVG,
                              fit: BoxFit.scaleDown,
                            ),
                            name: "Puma",
                          ),
                          AppGaps.wGap25,
                          BrandCard(
                            image: SvgPicture.asset(
                              AppAssetImages.jordanSVG,
                              fit: BoxFit.scaleDown,
                            ),
                            name: "Jordan",
                          ),
                          AppGaps.wGap25,
                        ],
                      ),
                    ),
                  ),
                  AppGaps.hGap50,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).headlineLarge,
                        ),
                        TextButton(onPressed: () {}, child: Text("View all"))
                      ],
                    ),
                  ),
                  AppGaps.hGap20,
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("pizza2.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Minute by tuk tuk",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("breakfast.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Cafe de Noir",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      Helper.getAssetName("bakery.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Bakes by Tella",
                  ),
                  AppGaps.hGap50,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Shoes",
                          style: Helper.getTheme(context).headlineLarge,
                        ),
                        TextButton(onPressed: () {}, child: Text("View all"))
                      ],
                    ),
                  ),
                  AppGaps.hGap20,
                  RestaurantCard(
                    image: Image.asset(
                      AppAssetImages.nikeShoePNG,
                      fit: BoxFit.cover,
                    ),
                    name: "Nike Jordan 1 Retro High Tie Dye",
                  ),
                  RestaurantCard(
                    image: Image.asset(
                      AppAssetImages.shoesJPG,
                      fit: BoxFit.cover,
                    ),
                    name: "Shoe",
                  ),
                  AppGaps.hGap50,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular",
                          style: Helper.getTheme(context).headlineLarge,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  AppGaps.hGap20,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MostPopularCard(
                            image: Image.asset(
                              Helper.getAssetName("pizza4.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Cafe De Bambaa",
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          MostPopularCard(
                            name: "Burger by Bella",
                            image: Image.asset(
                              Helper.getAssetName("dessert3.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  AppGaps.hGap20,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: Helper.getTheme(context).headlineLarge,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("View all"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(IndividualItem.routeName);
                          },
                          child: RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("pizza3.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Mulberry Pizza by Josh",
                          ),
                        ),
                        RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("coffee.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Barita"),
                        RecentItemCard(
                            image: Image.asset(
                              Helper.getAssetName("pizza.jpg", "real"),
                              fit: BoxFit.cover,
                            ),
                            name: "Pizza Rush Hour"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: true,
              )),
        ],
      ),
    );
  }
}

class RecentItemCard extends StatelessWidget {
  final String name;
  final Image image;

  const RecentItemCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Helper.getTheme(context)
                      .headlineMedium
                      ?.copyWith(color: AppColors.greyDark),
                ),
                Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColors.orangeColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColors.orangeColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  final String name;
  final Image image;

  const MostPopularCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 300,
            height: 200,
            child: image,
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: Helper.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColors.greyDark),
        ),
        Row(
          children: [
            Text("Cafe"),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                ".",
                style: TextStyle(
                  color: AppColors.orangeColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Western Food"),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              Helper.getAssetName("star_filled.png", "virtual"),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.9",
              style: TextStyle(
                color: AppColors.orangeColor,
              ),
            )
          ],
        )
      ],
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final Image image;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: image),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: Helper.getTheme(context).headlineSmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColors.orangeColor,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("(124 ratings)"),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColors.orangeColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String name;
  final Image image;

  const CategoryCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 100,
            height: 100,
            child: image,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: Helper.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColors.greyDark, fontSize: 16),
        ),
      ],
    );
  }
}

class BrandCard extends StatelessWidget {
  final String name;
  final SvgPicture image;

  const BrandCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            color: AppColors.placeholderBg,
            width: 70,
            height: 70,
            child: image,
          ),
        ),
        AppGaps.hGap5,
        Text(
          name,
          style: Helper.getTheme(context)
              .headlineMedium
              ?.copyWith(color: AppColors.greyDark, fontSize: 16),
        ),
      ],
    );
  }
}
