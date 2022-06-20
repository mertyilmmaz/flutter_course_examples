import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user7 = PostModel7(body: 's');
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 's';

    final user3 = PostModel3(1, 2, 'a', 'b');

    final user4 = PostModel4(userId: 1, id: 2, title: 's', body: 'v');

    final user5 = PostModel5(userId: 1, id: 2, title: 's', body: 's');

    final user6 = PostModel6();
    // best for service
    final user7 = PostModel7(body: 's');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user7 = user7.copyWith(body: 'mert');
          });
        },
      ),
      appBar: AppBar(
        title: Text(user7.body ?? 'Not Found any Data'),
      ),
    );
  }
}
