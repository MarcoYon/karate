package examples;

import com.intuit.karate.junit5.Karate;

class Runner {
    

    @Karate.Test
    Karate testTags() {
        return Karate.run().tags("@petStore01").relativeTo(getClass());
    }

    // mvn test -Dkarate.options="--tags @conduit_01"

}
