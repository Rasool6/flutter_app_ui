import 'package:flutter/material.dart';
import 'package:untitled/home/ui/profile/EditProfileScreen.dart';


class ProfileFragment extends StatefulWidget {
  const ProfileFragment({super.key});

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*1,
      width: MediaQuery.of(context).size.width*1,
      color: Colors.black,
      child:   Center(
          child: MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));
            },
            color: Colors.green,
            height: 60,

            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.06,
              child:  const Center(
                  child: Text(
                    "Login",
                    style:TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'BG Flame Bold'),
                  )),
            ),
          ),
        ),

    );

  }
}


