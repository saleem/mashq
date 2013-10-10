package fizzbuzz;

public class FizzBuzz {
    private int fizzFactor, buzzFactor;

    public FizzBuzz(int fizzFactor, int buzzFactor) {
	this.fizzFactor = fizzFactor;
	this.buzzFactor = buzzFactor;
    }

    public FizzBuzz() {
	this(3,5);
    }

    public String gives(int n) {
	StringBuilder ret = new StringBuilder();
	ret.append(isFizz(n) ? "Fizz" : "").append(isBuzz(n) ? "Buzz" : "").append(ret.length() == 0 ? Integer.toString(n) : "");
	return ret.toString();
    }

    private boolean isFizz(int number) {
        return (number % fizzFactor == 0);
    }

    private boolean isBuzz(int number) {
        return (number % buzzFactor == 0);
    }

    public static final void main(String[] args) {
	FizzBuzz fizzerBuzzer = new FizzBuzz();
	for (int i=1; i<=100; i++) {
	    System.out.printf("%s\n", fizzerBuzzer.gives(i));
	}
    }

}
