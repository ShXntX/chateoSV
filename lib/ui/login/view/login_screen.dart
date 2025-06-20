import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:chateo_eela_2025/ui/login/cubit/login_cubit.dart';
import 'package:chateo_eela_2025/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  //static const String routName = '/login';

  @override
  Widget build(BuildContext context) {
    //esta llave es para tener un validador del formulario
    final formKey = GlobalKey<FormState>();

    //llamo al cubit.
    final cubit = context.read<LoginCubit>();

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          //esta llave es para tener un validador del formulario
          key: formKey,
          // es un formulario
          child: SingleChildScrollView(
            child: Column(
              spacing: 24,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                          decorationThickness: 4.0,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const TextSpan(
                        text: ' to Chatbox',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Welcome back! Sign in using your social account or email to continue us',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent, // o cualquier color de fondo
                        border: Border.all(
                          color: AppColors.black,
                          width: 2,
                        ), // borde blanco
                        borderRadius: BorderRadius.circular(
                          100,
                        ), // esquinas redondeadas
                      ),

                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/facebook.png'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent, // o cualquier color de fondo
                        border: Border.all(
                          color: AppColors.black,
                          width: 2,
                        ), // borde blanco
                        borderRadius: BorderRadius.circular(
                          100,
                        ), // esquinas redondeadas
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/google.png'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 55, // ancho en píxeles
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.transparent, // o cualquier color de fondo
                        border: Border.all(
                          color: AppColors.black,
                          width: 2,
                        ), // borde blanco
                        borderRadius: BorderRadius.circular(
                          100,
                        ), // esquinas redondeadas
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/appleDark.png'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: AppColors.grey, thickness: 0.5),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: AppColors.grey, thickness: 0.5),
                    ),
                  ],
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email',
                  ),
                  //llamo a la funcion declarada en el otro archivo
                  validator: EmailValidator.validatorEmail,

                  //lamo al cubit
                  onChanged: cubit.onEmailChanged,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  // estilo de teclado
                  //para que no se vea lo que se escribe
                  obscureText: true,
                  //keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),

                  //llamo al metodo que valida mi contraseña
                  validator: EmailValidator.validatorPass,

                  //lamo al cubit
                  onChanged: cubit.onPassChanged,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FilledButton(
          onPressed: () {
            //formKey.currentState!.validate();
            final isValid = formKey.currentState?.validate() ?? false;
            if (isValid) {
              cubit.logeado();
            }
          },
          child: const Text('Log in'),
        ),
      ),
    );
  }
}
