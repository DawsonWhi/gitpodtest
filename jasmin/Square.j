; Square.j - create and call a static method square with command line input
;  this program also checks to make sure there is exactly one argument

.class public Square
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

    ; check to make sure that there is exactly 1 argument from command-line
    aload_0
    arraylength
    iconst_1
    if_icmpeq  gotArgOk

        ldc "Usage: java Square <int>"
        invokevirtual java.io.PrintStream.println(Ljava.lang.String;)V
        goto done

gotArgOk:
   ; get command line input value to square
   aload 0
   iconst_0
   aaload

   ; convert the command-line string argument to int
   invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

   ; call our square method - it works on doubles
   invokestatic Square.square(I)I

   ; output the resulting square
   invokevirtual java/io/PrintStream.println(I)V

done:
   return
.end method

.method public static square(I)I
  .limit stack 2
  .limit locals 1

  iload 0
  iload 0
  imul

  ireturn
  .end method