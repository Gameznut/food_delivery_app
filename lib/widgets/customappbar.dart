import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack;

  const CustomAppBar(
      {Key? key,
      this.leftCallBack,
      required this.leftIcon,
      required this.rightIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 45,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallBack != null ?() => leftCallBack!() : null ,
            child: _buildIcon(leftIcon)
          ),
          _buildIcon(rightIcon)
        ],
      ),
    );
  }
  Widget _buildIcon(icons){
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
      ),
      child: Icon(icons),
    );
  }
}
