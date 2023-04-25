import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';
import 'package:ui_builder/src/widgets/box.dart';
import 'package:ui_builder/ui_builder.dart';

Future<void> main() async {
  await UIBuilder.initialize(
    channelId: 187644,
    prjId: 511853,
    token:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuZHJlYS5idXR0YXJlbGxpQHRldGEuc28iLCJwcm9qZWN0cyI6WzI3ODk0NiwyNzg5NTEsMjAyNjYxLDI4OTA4MiwyMzgzMTAsMjg5MDg4LDIzODIyMiwyNDk3ODYsMjM3ODg4LDIzODEyMywzMDU1OTcsMjc0MDA1LDI3NDA1NCwyMzgyMTIsMjM4MTg3LDIzODIxMywyMzgyMjEsMjM4MjI3LDIzODE4NCwzMDU1MTMsMjM4Mjk2LDIzODI5NywyNzE5MTQsMjY5NjE3LDI3MTkxMiwyNzE5ODMsMjk1OTczLDI1MjIyNCwyNTIyNTAsMjUyMTI3LDI1MjIxOSwyNTIyNDgsMjUyMjYwLDI2MzA0NiwzMDU1NjMsMjgwMjcyLDI4MDk5NSwzMTM3NDUsMjgwMjkzLDI4NTU0MiwxNzA2NTUsMjg3NTMwLDM1OTMyOCw0NzEwOTQsMjgxMDAxLDI5Nzk4OCwyODcxMDAsMjg3MzUzLDM2MjgwMywyODczNDMsMzIzOTE4LDMyNDAxMiwyOTgyMTQsMjk3OTg1LDI5ODIxNywzNzQ0NTIsMzc0MzExLDMxMjAwMCwzMDU1OTIsMzI3ODMwLDM2NjI1Niw0MjA5ODIsMzE0NjI4LDE3MzE0MCwzMzI1MTUsMzQyNDc0LDE2NDc4MiwzMTQyODUsMzcyNDA3LDM0MDE0MywzMTcwNTksMTY2MDc1LDE5MjEzNCw0MTk3NTcsNDI1NTU4LDE2OTQyNCw0NTYzNTEsNDU2MzQ3LDQ2MzYzMiw0NTYzNjAsNDU2MzY1LDQ1NjM0NSw0NTYzNTIsNDU3Mzc1LDQ1Nzg3MSw0NjM2MzUsNDY3NzA5LDQ2NzcyMyw0NjcyMjksNDY2NTY1LDQ2NzIyNiw0NjcyMzQsMTE5NTQ4LDQ2NzcxNiw0NzA1NDgsMTE5NTUyLDExOTU0OSwxMTk1NDYsMTE2MzExLDEyMDA0NSwxMTk5NzcsMTE5NTYwLDEyMDAxMywxMjA3MzMsMTIwMDM4LDExODkyNSwxMjA3MjksMTIwNzM1LDExODEzOSwxMjE1NTIsMTIwNzQ0LDEyMTU4NywxMjE1NDUsMTIxNTQ4LDEyMTU2NCwxMjE1NjYsMTIxMjI3LDEyMTIxNSwxMjEyMjEsMTIxNTY5LDEyMTIyNiwxNjM4MjIsMTIxMjYwLDEyMjI4OCwxMTQxODgsNTEsNTIsNTMsNTYsMTY1MzAxLDY1LDc3LDgwLDE4NjU5NCwyMzgyOTMsMzA1NTQxLDUwNTM2LDE4NjU5MCwxNjUyOTEsMjM4MzEyLDE2NTI5MCwyMzgzMDUsMTgyNDE1LDE3MzEyNiwxNzMxMzAsMjM4MzE2LDE4NjAwNSwyNDUyNzUsMjk1MDA2LDI5NTAxNCw1MCwyNzg5NTcsMTY5MzkyLDE3NTExOCwyMDA3MDksMTg2NTUxLDI3ODE1OSwyMzM5MTgsMTkzMjM4LDIxNDg1MiwyOTM2MjEsMjE0ODU2LDI5NTQ5NiwyNTIyNzQsMjc4MjIyLDI5NTQ3NiwyNzgxODIsMjk1MzkyLDI5NTQ2NCwyOTU0MTIsMjc4MzQyLDExNjc5MiwyOTU2MTIsMjc4MzQxLDIzMDcyMCwyMDIwNjIsMjMwNjM0LDI3ODk2OCwxODA3ODEsMTc3ODg2LDI2NTMwOCwxODYwMzAsMTgyNDQ5LDI3ODg3NywyMzgzNTcsMTkwODQ1LDE4MjQ1MSwxNzA3MDksMjc4OTMyLDI0NzQ3MywyNDc0NzQsMjc4OTI2LDI3ODk1MiwyMTQ5MzUsMjc4OTM3LDI3ODk3MSwyNzg5NDIsMjc4OTM1LDI3MTk4MCwyNzg5NjBdLCJpYXQiOjE2NzY5MDg2NTR9.LmlyU01xSXqYj-Sbqm_TZdPO4rzw1gzYUVUniwVhu1k',
    debug: false,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// Supabase

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: UIBox(
            'ArticleCard',
            placeholder: () => const CircularProgressIndicator(),
            errorWidget: (error) => Text(error),
            theme: ThemeMode.light,
            workflows: [
              Workflow('node_id', Trigger.onTap, () {
                setState(() {
                  count++;
                });
              }),
            ],
            parameters: const [
              Var('Author_Name', value: 'John Doe'),
              Var('Article_Image',
                  value:
                      'https://images.unsplash.com/photo-1628597241647-b6904f8a70f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=768&q=80'),
            ],
            states: [
              Var('state_name', value: count),
            ],
          ),
        ),
      ),
    );
  }
}




/*
Var('Author_Name', value: 'John Doe'),
Var('Article_Image', value: 'https://images.unsplash.com/photo-1628597241647-b6904f8a70f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=768&q=80'),
*/