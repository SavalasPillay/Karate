package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersPRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("usersP").relativeTo(getClass());
    }

}
