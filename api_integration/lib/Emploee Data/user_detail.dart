import 'package:api_integration/Emploee%20Data/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserDetail extends StatelessWidget {
  final User user;
  const UserDetail({super.key, required this.user});
  static const TextStyle commonTextStyle = TextStyle(fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Detail"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.brown),
                  shape: BoxShape.circle),
              child: Image.network(user.image),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.brown,
              child: const Center(
                child: Text(
                  "Personal Detail",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myText("Name"),
                      myText("Address"),
                      myText("City"),
                      myText("State"),
                      myText("Email"),
                      myText("Gender"),
                      myText("Age"),
                      myText("BloodGroup"),
                      myText("Contact"),
                      myText("Height"),
                      myText("Weight"),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: ":- ${user.firstName} "),
                            TextSpan(text: user.lastName),
                          ],
                          style: commonTextStyle,
                        ),
                      ),
                      Text(":- ${user.address.address}",style: commonTextStyle,),
                          Text(
                        ":- ${user.address.city}",
                        style: commonTextStyle,
                      ),
                          Text(
                        ":- ${user.address.state}",
                        style: commonTextStyle,
                      ),
                          Text(
                        ":- ${user.email}",
                        style: commonTextStyle,
                      ),
                          Text(
                        ":- ${user.gender.name.toLowerCase()}",
                        style: commonTextStyle,
                      ),
                          Text(
                        ":- ${user.age}",
                        style: commonTextStyle,
                      ),
                          Text(
                        ":- ${user.bloodGroup}",
                        style: commonTextStyle,
                      ),
                       Text(
                        ":- ${user.phone}",
                        style: commonTextStyle,
                      ),
                       Text(
                        ":- ${user.height} cm",
                        style: commonTextStyle,
                      ),
                       Text(
                        ":- ${user.weight} kg",
                        style: commonTextStyle,
                      ),

                    ],
                  ),
                ],
              ),
            ),
             const SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.brown,
              child: const Center(
                child: Text(
                  "Employe Role & Company Address",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
                    Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      myText("Department"),
                      myText("Role"),
                      myText("Address"),
                      myText("City"),
                      myText("State"),
                      myText("Coordinate"),
                      const SizedBox(height: 25)
,                       myText("PostalCode"),
                    
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Text(
                          ":- ${user.company.department}",
                          style: commonTextStyle,
                        ),
                        Text(
                          ":- ${user.company.title}",
                          maxLines:1,
                          style: commonTextStyle,
                        ),
                        Text(
                          ":- ${user.company.address.address}",
                          style: commonTextStyle,
                        ),
                        Text(
                          ":- ${user.address.city}",
                          style: commonTextStyle,
                        ),
                        Text(
                          ":- ${user.address.state}",
                          style: commonTextStyle,
                        ),
                        Text(
                          ":- lat :  ${user.company.address.coordinates.lat}",
                          style: commonTextStyle,
                        ),
                      Text(
                          "    lng : ${user.company.address.coordinates.lng}",
                          style: commonTextStyle,
                        ),
                     Text(
                          ":- ${user.address.postalCode}",
                          style: commonTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text myText(name) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }
}
