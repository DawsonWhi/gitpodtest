; creates a method that takes 2 hard coded number, -8 and 3
; and checks which one is bigger, which will be 3

.class public MaxintMinus8and3
.super java/lang/Object

; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 4
    .limit locals 1

    ; push System.out onto the stack
    getstatic java/lang/System.out Ljava/io/PrintStream;

    ; load -8 and 3 onto the stack
    ldc -8
    ldc 3

    ; call our max method
    invokestatic MaxintMinus8and3.max(II)I


   ; output the bigger number
   invokevirtual java/io/PrintStream.println(I)V

   ; done
   return
.end method

.method public static max(II)I
  .limit stack 2
  .limit locals 2

  iload 0
  iload 1
 
  if_icmpge firstIsMax
secondIsMax:
  iload 1
  goto done

firstIsMax:
  iload 0

done:
    ireturn
    .end method