; Prints the length of a hard-coded String "Hello World from Jasmin” 
; then prints the result of the method

.class public StrLenHello
.super java/lang/Object


; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
   .limit stack 4
   .limit locals 2

    ; push System.out onto the stack
    getstatic java/lang/System.out Ljava/io/PrintStream;

    ; push a string onto the stack
    ldc "Hello World from Jasmin!"

    ; call our length method
    invokestatic StrLenHello.length(Ljava/lang/String;)I

    ; print resulting int
    invokevirtual java/io/PrintStream.println(I)V


    ; done
    return
.end method

.method public static length(Ljava/lang/String;)I
  .limit stack 2
  .limit locals 2

  ; load string onto the stack
  aload 0

  invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I

  done:
    ireturn
    .end method