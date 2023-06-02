; Gets two command-line argments and sends them to a method that squares then sums the argumetns then takes the square root
; 
.class public Dist
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

    ; get the args array reference at local 0 for static method main
    aload 0
    iconst_0
    aaload

    ; convert the command-line string argument to int
    invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

    ; get the second command-line argument
    aload 0
    iconst_1
    aaload

    ; convert the command-line string argument to int
    invokestatic java.lang.Integer.parseInt(Ljava.lang.String;)I

    ; call the dist method
    invokestatic Dist.dist(II)D

    ; call the PrintStream.println() method.
    invokevirtual java/io/PrintStream.println(D)V

done:
   return
.end method

; method to find hypotenuse, or square root of the sum of two square numbers
.method public static dist(II)D
    .limit stack 3
    .limit locals 2

    ; square 1st double
    iload 0
    iload 0
    imul 

    ; square 2nd double
    iload 1
    iload 1
    imul     

    ; add the two squares
    iadd
    ; convert to double
    i2d

    ; call the Math.sqrt which takes a double and returns square root of the double
    invokestatic java.lang.Math.sqrt(D)D

    dreturn
.end method