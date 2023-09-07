import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class PostComments extends StatelessWidget {
  const PostComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        children: [
          Column(
            children: [
              Text('Comments'.tr()).titleMedium(context).fontWeightBold(),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Colors.black87,
                thickness: .1,
                height: .1,
              )
            ],
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                    ),
                    title: RichText(
                        text: TextSpan(
                            text: 'Geto Suguru $index ',
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                          TextSpan(
                            text: ' 25 second a go',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black38),
                          )
                        ])),
                    subtitle: Text('lorem.Ad eiusmod labore ipsum proident ut.')
                        .bodyMedium(context),
                  );
                })),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * .085,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(
                  color: Colors.black87,
                  thickness: .1,
                  height: .1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.amber,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.black38),
                                hintText: "Comments as Geto Suguru".tr())),
                      ),
                      TextButton(onPressed: () {}, child: Text('Posting'))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
