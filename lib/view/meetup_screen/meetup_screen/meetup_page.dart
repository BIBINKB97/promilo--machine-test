import 'package:flutter/material.dart';
import 'package:machine_test/view/widgets/text_style.dart';
import 'package:machine_test/view/meetup_screen/meetup_screen/widgets/carousel_slider.dart';
import 'package:machine_test/view/meetup_screen/meetup_screen/widgets/custom_card.dart';
import 'package:machine_test/view/meetup_screen/meetup_screen/widgets/number_card.dart';
import 'package:machine_test/view/meetup_screen/meetup_screen/widgets/search_bar.dart';

class MeetUpPage
    extends StatelessWidget {
  const MeetUpPage(
      {super.key});

  @override
  Widget build(
      BuildContext
          context) {
    return Scaffold(
      appBar:
          AppBar(
         
        leading: Icon(Icons.arrow_back_ios),
        title: CustomText(
          text: "Individual Meetup",
          fs: 24,
          fw: FontWeight.w500,
        ),
      ),
      body:
          ListView(children: [
        Container(
          height: 290,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CustomSearchBar(),
              CustomCarousel(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomText(
            text: "Trending Popular People",
            fs: 18,
            fw: FontWeight.w500,
          ),
        ),
        Container(
          height: 180,
          margin: EdgeInsets.only(left: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CustomCard(
                circleImg: "assets/images/feather.png",
                title: "Author",
                meetups: "1,025 Meetups",
              ),
              CustomCard(
                circleImg: "assets/images/film.png",
                title: "Movies",
                meetups: "2,125 Meetups",
              ),
              CustomCard(
                circleImg: "assets/images/book.png",
                title: "Books",
                meetups: "708 Meetups",
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomText(
            text: "Top Trending Meetups",
            fs: 18,
            fw: FontWeight.w500,
          ),
        ),
        Container(
            height: 185,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                String cardNumber = (index + 1).toString();
                return NumberCard(
                  count: cardNumber,
                );
              },
              itemCount: 05,
            )),
      ]),
    );
  }
}
