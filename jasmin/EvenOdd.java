class EvenOdd {

    public static void main(String[] args) {
        System.out.println(evenOrOdd(Integer.parseInt(args[0])));
    }

    static String evenOrOdd(int k) {
        String s;
        if (k == 0){
            s = "Zero";
        
        }
        else if (k % 2 == 0) {
            s = "Even";
        }
        else {
            s = "Odd";
        }
        return s;
    }
}