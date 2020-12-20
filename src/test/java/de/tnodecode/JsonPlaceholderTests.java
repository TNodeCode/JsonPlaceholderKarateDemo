package de.tnodecode;

import com.intuit.karate.junit5.Karate;

public class JsonPlaceholderTests {

    @Karate.Test
    public Karate testApi() {
        return Karate.run("classpath:features");
    }
}
