import 'package:flutter/material.dart';
import 'package:job_finder_app/constants.dart';
import 'package:job_finder_app/models/job_model.dart';

class ItemsJobs extends StatefulWidget {
  Job job;
  bool themDark;
  ItemsJobs(this.job, {super.key, this.themDark = false});

  @override
  State<ItemsJobs> createState() => _ItemsJonsState();
}

class _ItemsJonsState extends State<ItemsJobs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
        bottom: 20,
        top: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: widget.themDark ? secondaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(4, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        widget.job.urlLogo,
                        width: 60,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.job.isFavorite = !widget.job.isFavorite;
                      });
                    },
                    child: Icon(
                      widget.job.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: widget.themDark ? Colors.white : Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.job.name,
                    style: TextStyle(
                      fontSize: 15,
                      color: widget.themDark ? secondaryTextColor : Colors.grey,
                    ),
                  ),
                  Text(
                    widget.job.role,
                    style: widget.themDark
                        ? const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)
                        : TextStyle(
                            fontSize: 20,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Theme.of(context).highlightColor,
                  
                      ),
                        const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.job.location,
                        style: TextStyle(
                          fontSize: 15,
                          color: widget.themDark
                              ? secondaryTextColor
                              : Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
