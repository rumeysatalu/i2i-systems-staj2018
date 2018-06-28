CREATE OR REPLACE AND COMPILE JAVA SOURCE NAMED "MyJavaDbProcedure" AS
public static void main(String[] args) {
		System.out.println("This program takes the user input and prints the prime numbers until that number");
	    System.out.println ("Enter Number:");
	    Scanner scanner = new Scanner(System.in);
	    int num = scanner.nextInt();

	    long startValue = 0;
	    long primeNumbersToTest = num;
	    for (long i = startValue; i < primeNumbersToTest; i++) {
	        if (findPrime(i).equals("Prime")) {
	            System.out.println(i + " is Prime");
	        } else {
	            System.out.println(i + " is not Prime");
	        }
	    }
	};
/    



