package hello;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class GreeterTest {

    @Test
    public void testSayHello() {
        Greeter greeter = new Greeter();
        String expected = "DevOps Project for AchiStar Technologies";
        String actual = greeter.sayHello();
        assertEquals(expected, actual, "The sayHello method should return the expected greeting message.");
    }
}
