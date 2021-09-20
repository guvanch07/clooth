import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clooth/widget/startRatio.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostFunc extends ChangeNotifier {
  Future addcomment(BuildContext context, String postId, String comment) async {
    await FirebaseFirestore.instance
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .doc(comment)
        .set({
      'comment': comment,
    });
  }

  showCommentSheet(
      BuildContext context, DocumentSnapshot? snapshot, String? docId) {
    final TextEditingController _controller = TextEditingController();

    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.70,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  width: 111.w,
                  height: 4.h,
                  color: Color(0xff9D9D9D),
                ),
                Container(
                  height: 500.h,
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('posts')
                        .doc(docId)
                        .collection('comments')
                        .snapshots(),
                    builder: (context, snapshat) {
                      if (snapshat.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return ListView(
                            children: snapshat.data!.docs.map<Widget>(
                                (DocumentSnapshot documentSnapshop) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.11,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.person),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text((documentSnapshop.data()
                                      as DocumentSnapshot)['comment']),
                                )
                              ],
                            ),
                          );
                        }).toList());
                      }
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    alignment: Alignment.centerLeft,
                    child: StartRatio()),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                    suffixIcon: IconButton(
                        onPressed: () {
                          addcomment(
                              context,
                              (snapshot!.data() as DocumentSnapshot)['caption'],
                              _controller.text);
                          _controller.clear();
                        },
                        icon: SvgPicture.asset('assets/send.svg')),
                    hintText: 'Написать отзыв',
                    fillColor: Color(0xffE5E5E5),
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                )
              ],
            ),
          );
        });
  }
}
