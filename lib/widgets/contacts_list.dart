import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/screens/mobile_chat_screen.dart';

import '../info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MobileChatScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          info[index]['name'].toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
                        radius: 30,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: dividerColor,
                indent: 85,
              )
            ],
          );
        },
      ),
    );
  }
}
