
import 'package:flutter/material.dart';
import 'package:self_service_app/utlities/app_styles.dart';


class CustomIetmContainer extends StatelessWidget {
  const CustomIetmContainer({Key? key, required this.image, required this.text}) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.brown,
            Colors.white,
          ],
          stops: [.011, .011],
        ),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,

      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Image.asset(image),
          SizedBox(width: 15,),
          Text(text,style: AppStyles.style17,),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),),
        ],
      ),
    );
  }
}
