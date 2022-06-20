import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                    onPressed: () {},
                    title: title,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          CustomFoodButton(
            title: title,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _ColorstUtility {
  final Color RedColor = Color.fromARGB(255, 245, 92, 81);
  final Color WhiteColor = Colors.white;
}

class CustomFoodButton extends StatelessWidget with _ColorstUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: RedColor, shape: StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility().Normal2xPadding,
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: WhiteColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class _PaddingUtility {
  final NormalPadding = EdgeInsets.all(8.0);
  final Normal2xPadding = EdgeInsets.all(16.0);
}
