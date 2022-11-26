import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:olapets/constant/constant.dart';
import 'package:olapets/view/widgets/mySpacing.dart';
import 'package:olapets/view/widgets/myText.dart';
import 'package:olapets/view/widgets/myTextField.dart';

class DateOfBirth extends StatefulWidget {
  @override
  _DateOfBirthState createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Data de nascimento",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'BalooChettan2-Regular',
              color: KPrimaryColor,
            ),
          ),
          spaceVertical(30),
          MyTextField(
            onTap: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(1920, 3, 5),
                  maxTime: DateTime(3000, 6, 7),
                  theme: DatePickerTheme(
                    cancelStyle: TextStyle(
                      color: KGreyColor.withOpacity(0.5),
                      fontSize: 14,
                      fontFamily: 'BalooChettan2-Regular',
                    ),
                    itemStyle: TextStyle(
                      color: KBlackColor,
                      fontSize: 14,
                      fontFamily: 'BalooChettan2-Regular',
                    ),
                    doneStyle: TextStyle(
                        color: KBlackColor,
                        fontSize: 16,
                        fontFamily: 'BalooChettan2-Regular'),
                  ), onChanged: (date) {
                print(
                  'change $date in time zone ' +
                      date.timeZoneOffset.inHours.toString(),
                );
              }, onConfirm: (date) {
                print('confirm $date');
              }, currentTime: DateTime.now(), locale: LocaleType.en);
            },
            hintText: '00/00/000',
          ),
        ],
      ),
    );
  }
}
