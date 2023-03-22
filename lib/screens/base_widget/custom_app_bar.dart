import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String label;
  bool? centerTitle;
  String? actionButtonTitle;
  Function()? actionButtonOnPressed;

  CustomAppBar(
      {super.key,
      this.label = '',
      this.centerTitle = true,
      this.actionButtonTitle,
      this.actionButtonOnPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      centerTitle: centerTitle,
      backgroundColor: Colors.cyan,
      elevation: .3,
      title: Text(
        label,
        style: const TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      actions: [
        actionButtonTitle != null
            ? Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: actionButtonOnPressed,
                  child: Text(
                    actionButtonTitle!,
                    style: const TextStyle(
                        color: Color(0xff5A6776),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
