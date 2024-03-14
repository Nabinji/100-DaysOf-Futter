import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job_model.dart';

import '../constants.dart';

class RecentItemsList extends StatelessWidget {
  Job job;
  RecentItemsList(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(2, 2),
                blurRadius: 8,
              ),
            ]),
        height: 110,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.network(job.urlLogo),
                ),
                recentDetail(context)
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20,right: 20),
              child: Icon(Icons.favorite_border,color: Colors.black45,),
            )
          ],
        ),
      ),
    );
  }

  Column recentDetail(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          job.name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: secondaryTextColor,
          ),
        ),
        Text(
          job.role,
          style: TextStyle(
              fontSize: 20, color: primaryColor, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              job.location,
              style: TextStyle(
                fontSize: 15,
                color: secondaryTextColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
