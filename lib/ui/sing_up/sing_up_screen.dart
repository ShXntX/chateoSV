import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:chateo_eela_2025/ui/sing_up/cubit/sing_up_cubit.dart';
import 'package:chateo_eela_2025/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  //static const String routName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    //esta llave es para tener un validador del formulario
    final formKey = GlobalKey<FormState>();

    //pasar al cubir
    final cubit = context.read<SingUpCubit>();

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          //esta llave es para tener un validador del formulario
          key: formKey,
          //es un formulario
          child: SingleChildScrollView(
            child: Column(
              spacing: 24,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Sign up with ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      TextSpan(
                        text: 'Email',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                          decorationThickness: 4.0,
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
                            'Get chatting with friends and family today by signing up for our chat app!',
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your name',
                  ),
                  //aqui llamo al cubit
                  onChanged: cubit.onNameChanged,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email',
                  ),
                  //llamo a la funcion declarada en el otro archivo
                  validator: EmailValidator.validatorEmail,
                  //auto valida un campo vacio
                  //autovalidateMode: AutovalidateMode.always,
                  //autovalidateMode: AutovalidateMode.onUnfocus,

                  //aqui llamo al cubit
                  onChanged: cubit.onEmailChanged,
                ),
                TextFormField(
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                  //aqui llamo al cubit
                  onChanged: cubit.onPassChanged,
                  //DEBER AGREGAR VALIDACION A LA CONTRASEÑA validator y
                  //en el login poner la validacion del correo
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                  //aqui llamo al cubit
                  onChanged: cubit.onConfPassChanged,
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
            formKey.currentState!.validate();
          },
          style: FilledButton.styleFrom(),
          child: const Text('Create account-uihut'),
        ),
      ),
    );
  }
}
