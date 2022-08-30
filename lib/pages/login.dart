import 'package:auth_account/pages/page_one.dart';
import 'package:auth_account/widgets/widget_button.dart';
import 'package:auth_account/widgets/widget_button_account.dart';
import 'package:auth_account/widgets/widget_input_default.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    // 'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  GoogleSignInAccount? _currentUser;

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    _googleSignIn.onCurrentUserChanged.listen((event) {
      setState(() {
        _currentUser = event;
      });
    });
    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _currentUser == null
            ? Container(
                color: const Color(0xff7F95CE),
                child: ListView(children: [
                  Center(
                    child: Column(
                      children: <Widget>[
                        const Padding(padding: EdgeInsets.only(top: 40.0)),
                        const Text("Authentication Google",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        Image.asset(
                          'assets/computer.png',
                          height: 203,
                          width: 203,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Email",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            FormdeDefault(height: 40.0, width: 286.0),
                            // ButtonLogin(textButton: "Anak muda", )
                          ],
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Password",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            FormdeDefault(height: 40.0, width: 286.0),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ButtonDefault(
                          height: 32.0,
                          width: 77.0,
                          colorButton: const Color(0xffA1BBE1),
                          onPressed: (() => debugPrint("Testiiing")),
                          textButton: "Login",
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        ButtonAccount(
                          imageUrl: "assets/google.png",
                          name: "Login with google",
                          onPreesed: () => _handleSignIn(),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        // ButtonAccount(
                        //     imageUrl: "assets/google.png",
                        //     name: "Login with google2",
                        //     onPreesed: () async {
                        //       //
                        //       if (FirebaseAuth.instance.currentUser == null) {
                        //         GoogleSignInAccount? account =
                        //             await GoogleSignIn().signIn();
                        //         if (account != null) {
                        //           GoogleSignInAuthentication auth =
                        //               await account.authentication;
                        //           OAuthCredential credential =
                        //               GoogleAuthProvider.credential(
                        //                   accessToken: auth.accessToken,
                        //                   idToken: auth.idToken);
                        //           await FirebaseAuth.instance
                        //               .signInWithCredential(credential);
                        //         }
                        //       }

                        //       // Merubah Tulisan Tombol
                        //       StreamBuilder<User?>(
                        //         stream: FirebaseAuth.instance.userChanges(),
                        //         builder: (context, snapshot) {
                        //           if (snapshot.hasData) {
                        //             return Text('Login with google2');
                        //           } else {
                        //             return const Text("SignOut");
                        //           }
                        //         },
                        //       );
                        //     }),
                        // const SizedBox(
                        //   height: 20.0,
                        // ),
                        // StreamBuilder<User?>(
                        //   stream: FirebaseAuth.instance.userChanges(),
                        //   builder: (context, snapshot) {
                        //     if (snapshot.hasData) {
                        //       return Text(
                        //           'Sudah Login as ${FirebaseAuth.instance.currentUser!.displayName}(${FirebaseAuth.instance.currentUser!.email})');
                        //     } else {
                        //       return const Text("Belom Logiin");
                        //     }
                        //   },
                        // ),
                        // const SizedBox(
                        //   height: 20.0,
                        // ),
                        ButtonAccount(
                          imageUrl: "assets/instagram.png",
                          name: "Login with instag",
                          onPreesed: () {},
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ButtonAccount(
                          imageUrl: "assets/github.png",
                          name: "Login with github",
                          onPreesed: () {},
                        ),
                      ],
                    ),
                  ),
                ]),
              )
            : PageOne(
                data: ListTile(
                    title: Text(
                      _currentUser!.displayName ?? "",
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      _currentUser!.email,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    leading: GoogleUserCircleAvatar(
                      identity: _currentUser!,
                    )),
              ),

        // Container(
        //     child: ListTile(
        //         title: Text(_currentUser!.displayName ?? ""),
        //         subtitle: Text(_currentUser!.email),
        //         leading: GoogleUserCircleAvatar(
        //           identity: _currentUser!,
        //         )),
        //   ),
      ),
    );
  }
}
