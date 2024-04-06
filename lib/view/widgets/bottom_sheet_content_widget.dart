import 'package:flutter/material.dart';
import 'package:shopping_app/view/widgets/bottom_sheet_textfield_widget.dart';
import 'package:shopping_app/view/widgets/elevated_button_widget.dart';

class BottomSheetContentWidget extends StatelessWidget {
  const BottomSheetContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Text(
                'Add customer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox()),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 217, 237, 252),
                radius: 13,
                child: Center(
                    child: Icon(
                  Icons.close,
                  size: 18,
                  color: Color(0xFF17479b),
                )),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          BottomSheetTextFieldWidget(
            label: 'Customer Name',
          ),
          SizedBox(
            height: 12,
          ),
          BottomSheetTextFieldWidget(
            label: 'Mobile Number',
          ),
          SizedBox(
            height: 12,
          ),
          BottomSheetTextFieldWidget(
            label: 'Email',
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Address',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: BottomSheetTextFieldWidget(label: 'Street')),
              SizedBox(
                width: 25,
              ),
              Expanded(child: BottomSheetTextFieldWidget(label: 'Street 2'))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: BottomSheetTextFieldWidget(label: 'City')),
              SizedBox(
                width: 25,
              ),
              Expanded(child: BottomSheetTextFieldWidget(label: 'Pin code'))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: BottomSheetTextFieldWidget(label: 'Country')),
              SizedBox(
                width: 25,
              ),
              Expanded(child: BottomSheetTextFieldWidget(label: 'State'))
            ],
          ),
          Expanded(child: SizedBox()),
          Center(
              child: Padding(
            padding: EdgeInsets.only(bottom: 14),
            child: ElevatedButtonWidget(),
          ))
        ],
      ),
    );
  }
}
