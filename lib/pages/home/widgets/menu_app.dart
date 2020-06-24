import 'package:HomeDoNubank/pages/home/widgets/item_menu.dart';
import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: [
              Image.network(
                'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
                height: 100,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(
                  text: "Branco",
                  children: [
                    TextSpan(
                        text: " 260 - Nu Pagamentos S.A",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(
                  text: "Agência",
                  children: [
                    TextSpan(
                        text: " xxxx ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(
                  text: "Conta",
                  children: [
                    TextSpan(
                        text: " xxxxxxx-x ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      ItemMenu(
                        icon: Icons.info_outline,
                        text: "Me ajuda",
                      ),
                      ItemMenu(
                        icon: Icons.person,
                        text: "Perfil",
                      ),
                      ItemMenu(
                        icon: Icons.settings,
                        text: "Configurar conta",
                      ),
                      ItemMenu(
                        icon: Icons.credit_card,
                        text: "Configurar cartão",
                      ),
                      ItemMenu(
                        icon: Icons.store,
                        text: "Pedir conta PJ",
                      ),
                      ItemMenu(
                        icon: Icons.phone_iphone,
                        text: "Configurações do app",
                      ),
                       SizedBox(
                height: 20,
              ),
                      Container(
                        height: 35,
                        width:double.infinity ,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.7, color:Colors.white54)
                        ),
                        child: RaisedButton(
                            color: Colors.purple[800],
                            highlightColor: Colors.transparent,
                            elevation: 0,
                            disabledElevation: 0,
                            focusElevation: 0,
                            highlightElevation: 0,
                            hoverElevation: 0,
                            splashColor: Colors.purple[900],
                            child: Text(
                              "Sair do app".toUpperCase(),style: TextStyle(fontSize: 12),
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}