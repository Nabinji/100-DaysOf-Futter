import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/components/items_jobs.dart';
import 'package:job_finder_app/components/recent_items_list.dart';
import 'package:job_finder_app/constants.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../models/job_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // for menu , search and filter icon
            customAppBar(),
            // for welcome text
            welcomText(),
            // for you
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "For You",
                style: TextStyle(
                  fontSize: 20,
                  color: secondaryTextColor,
                ),
              ),
            ),
            JobCarousel(forYou),
            // for recent
            recentItems()
          ],
        ),
      ),
    );
  }

  Column recentItems() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 5,
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent",
                style: TextStyle(
                  fontSize: 20,
                  color: secondaryTextColor,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: recent.length,
            itemBuilder: (context, index) {
              return RecentItemsList(recent[index]);
            },
          ),
        ),
      ],
    );
  }

  Padding welcomText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Jade",
            style: TextStyle(
              fontSize: 20,
              color: secondaryTextColor,
            ),
          ),
          Text(
            "Find your next",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          Text(
            "design job",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: secondaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Padding customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/slider.svg",
            height: 35,
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/search.svg",
            height: 35,
          ),
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/icons/filter.svg",
            height: 35,
          ),
        ],
      ),
    );
  }
}


class JobCarousel extends StatelessWidget {
  List<Job> jobs;
  JobCarousel(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: jobs
          .map((e) => ItemsJobs(
                e,
                themDark: jobs.indexOf(e) == 0,
              ))
          .toList(),
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230,
      ),
    );
  }
}
