package gr.aueb.cf.ch3;

/**
 * Ειδικές μορφές της while.
 */

public class SpecialWhileForms {

    public static void main(String[] args) {
        int i = 1;

        while (i <= 0) {
            System.out.println("never gets in");
            i++;
        }

        while (i <= 1 ) {
            System.out.println("only one iteration");
            i++;
        }

        while (true) {
            System.out.println("i am eternal");
        }

    }
}
