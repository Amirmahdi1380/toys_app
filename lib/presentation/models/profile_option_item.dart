import 'package:flutter/material.dart';

class ProfileOptionItem {
  String label;
  IconData icon;
  Function onPressed;

  ProfileOptionItem(this.label, this.icon, this.onPressed);
}

List<ProfileOptionItem> profileOptions = [
  ProfileOptionItem('پیام های من', Icons.email, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('ذخیره شده ها', Icons.bookmark, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('کامنت های من', Icons.comment, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('شارژ کیف پول', Icons.attach_money_sharp, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('سابقه تراکنش های کیف پول', Icons.history, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('پیگیری سفارشات', Icons.account_balance_wallet_sharp, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('پیگیری فرم ها', Icons.edit_document, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('لیست دعوت شدگان', Icons.add_comment_outlined, () {
    //TODO:navigate to other screen
  }),
  ProfileOptionItem('خرید چکی', Icons.sell, () {
    //TODO:navigate to other screen
  }),
];
