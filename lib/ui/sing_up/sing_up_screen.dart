import 'package:chateo_eela_2025/ui/core/ui/colors.dart';
import 'package:chateo_eela_2025/ui/sing_up/cubit/sing_up_cubit.dart';
import 'package:chateo_eela_2025/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});

  //static const String routName = '/sign-up';

  @override
  Widget build(BuildContext context) {
    //esta llave es para tener un validador del formulario
    final formKey = GlobalKey<FormState>();

    //pasar al cubir
    final cubit = context.read<SingUpCubit>();

    //un cotrolador de textos para validar que un campo coincida con otro
    //final passOriginal = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocListener<SingUpCubit, SingUpState>(
          listenWhen: (previous, current) {
            return previous.status != current.status;
          },
          listener: (context, state) {
            // TODO: implement listener
            //Toast es para mostrar mensajes en pantalla
            if (state.status == Status.passwordTooWeek) {
              Fluttertoast.showToast(msg: 'Contraseña muy débil');
            } else if (state.status == Status.emailAlreadyReistered) {
              Fluttertoast.showToast(msg: 'Email ya registrado');
            } else if (state.status == Status.failed) {
              Fluttertoast.showToast(
                msg: 'Algo salió mal. Intenta nuevamente ...',
              );
            }
          },
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
                    validator: EmailValidator.validatorName,
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
                    //agrego el controlador declarado arriba
                    //controller: passOriginal,
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                    ),
                    //aqui llamo al cubit
                    onChanged: cubit.onPassChanged,
                    //valida un Pass valido
                    validator: EmailValidator.validatorPass,
                  ),
                  BlocBuilder<SingUpCubit, SingUpState>(
                    builder: (context, state) {
                      return TextFormField(
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Confirm Password',
                        ),
                        //aqui llamo al cubit
                        onChanged: cubit.onConfPassChanged,
                        forceErrorText: state.status == Status.passwordMismatch
                            ? 'Contrasenia no coincide'
                            : null,
                        //esta validador se declaro de esta manera ya no recibe un parametro
                        // validator: (value) => EmailValidator.validatorPassConfirm(
                        //   value,
                        //   passOriginal.text,
                        // ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),

        child: BlocBuilder<SingUpCubit, SingUpState>(
          builder: (context, state) {
            if (state.status == Status.loading) {
              return CircularProgressIndicator.adaptive();
            }
            return FilledButton(
              onPressed: (state.status == Status.loading)
                  ? null
                  : () {
                      final isValid = formKey.currentState?.validate() ?? false;
                      if (isValid) {
                        // llamar al cubit para registrar al usuario
                        cubit.createAccount();
                      }
                    },
              style: FilledButton.styleFrom(),
              child: const Text('Create account-uihut'),
            );
          },
        ),
      ),
    );
  }
}
