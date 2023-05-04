; Hello World Jasmin program.
; Modified from Jon Meyer's sample HelloWorld.j program.
; Replaces deprecated invokenonvirtual with invokespecial.

.class public HelloWorld
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 10
   .limit locals 10

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; push a string onto the stack
   ldc "Hello World from Jasmin!"

   ; call the PrintStream.println() method.
   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;
   ; dup ;bad practice because this relies on programer to know that this has been pushed on earlier

   ; push two values onto the stack and add them
   ldc 422
   i2f
   ldc 73.5
   fadd           ; JVM has only typed arithmatic instructions


   ; call the PrintStream.println() method with the sum of two floats
   invokevirtual java/io/PrintStream.println(F)V



   ; done
   return
.end method
