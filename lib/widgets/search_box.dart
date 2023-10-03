import 'package:flutter/material.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          const Expanded(
            flex: 6,
            child: SizedBox(
              height: 35,
              child: TextField(
                cursorHeight: 20,
                // autofillHints: ['جستجوی شگفت انگیز'],
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'جستجوی شگفت انگیز',
                  hintStyle: TextStyle(height: 2.5),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.amber, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 1, color: Colors.amber),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // margin: EdgeInsets.only(right: 30),
              width: 20,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}