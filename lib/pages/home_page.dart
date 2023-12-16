import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:new_app/common/widgets/inputTextField.dart';
import 'package:new_app/pages/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _devicewidth;
  var userCon = TextEditingController();
  var firstCon = TextEditingController();
  var lastCon = TextEditingController();
  bool isClick = true;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: _deviceHeight,
            width: _devicewidth,
            padding: EdgeInsets.symmetric(horizontal: _devicewidth * 0.05),
            margin: EdgeInsets.symmetric(vertical: _deviceHeight * 0.05),
            child: Column(
              children: [
                _pageTitle(),
                const SizedBox(
                  height: 40,
                ),
                // _inputTextUsername(),
                CustomTextField(
                  iconPrefix: const Icon(Icons.person),
                  title: 'Username',
                  controller: userCon,
                ),
                _sizedbox(),
                CustomTextField(
                  isObusure: isClick,
                  iconPrefix: const Icon(Icons.lock),
                  title: 'Password',
                  controller: firstCon,
                  iconSuffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isClick = !isClick;
                        });
                      },
                      icon: Icon(
                        isClick ? Icons.visibility_off : Icons.visibility,
                      )),
                ),
                _sizedbox(),
                CustomTextField(
                  iconPrefix: const Icon(Icons.email),
                  title: 'LastName',
                  controller: lastCon,
                ),
                _sizedbox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomTextField(
                        iconPrefix: const Icon(Icons.email),
                        title: 'Phone Number',
                        keyBoardType: TextInputType.number,
                        controller: lastCon,
                      ),
                    ),
                    const Gap(20),
                    Expanded(
                      child: CustomTextField(
                        iconPrefix: const Icon(Icons.email),
                        title: 'LastName',
                        controller: lastCon,
                      ),
                    ),
                  ],
                ),
                //  _inputTextNames(),
                _sizedbox(),
                //  _inputTextEmail(),
                _sizedbox(),
                //  _inputTextPass(),
                _sizedbox(),
                _button(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Already has an account, sign"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Align(
      alignment: Alignment.center,
      child: Text(
        'Sign up',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  Widget _inputTextUsername() {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Username',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Username',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _inputTextNames() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: _inputTextName(),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: _inputTextName2(),
          ),
        ]);
  }

  Widget _inputTextName() {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'First Name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'First Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _inputTextName2() {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Last Name',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Last Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _inputTextEmail() {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Email Address',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email Address',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _inputTextPass() {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.password),
            labelText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _sizedbox() {
    return const SizedBox(
      height: 30,
    );
  }

  Widget _button() {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      width: _devicewidth,
      child: MaterialButton(
        onPressed: () {
          print("Hello World");
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
