import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key, required this.onTap, required this.onChanged})
      : super(key: key);
  final void Function() onTap;
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onTap: onTap,
        onChanged: onChanged,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: AppColor.primary),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: AppColor.primary),
            ),
            filled: true,
            fillColor: const Color.fromARGB(106, 41, 148, 178),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: AppColor.primary),
            ),
            hintStyle: const TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
            suffixIcon: const Icon(
              Icons.cancel,
              color: Colors.lightBlueAccent,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
      ),
    );
  }
}
