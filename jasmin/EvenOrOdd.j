; creates a method that returns if a number is even or odd
; 0 is even

.class public EvenOrOdd
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 3
   .limit locals 1

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;


    ; Check to make sure there is exactly one command-line argument
    aload_0
    arraylength
    iconst_1
    if_icmpeq gotArgOk

    ldc "Usage: java EvenOrOdd <int>"
    invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
    goto done

gotArgOk:

    aload 0
    iconst_0
    aaload

    ; convert the command-line string argument to int
    invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

    ; call our square method - it works on doubles
    invokestatic EvenOdd.evenOdd(I)Ljava.lang.String;

    ; output the resulting String
    invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V

done: ; end program
   return
.end method

.method public static evenOdd(I)Ljava.lang.String;
  .limit stack 2
  .limit locals 1

evenOrOdd: ; even or odd method
   iload 0 
   iconst_2
   irem
   ifne odd

even:
   ldc "Even"
   goto leave
   
odd:
   ldc "Odd"

leave:
  areturn
  .end method