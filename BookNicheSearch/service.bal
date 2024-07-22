import ballerina/http;
import ballerina/os;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {
    resource function get technicalBooks() returns json {
        json technicalBooks = [
            {"title": "Clean Code", "author": "Robert C. Martin", "category": "Technical"},
            {"title": "Design Patterns", "author": "Erich Gamma", "category": "Technical"},
            {"title": "Refactoring", "author": "Martin Fowler", "category": "Technical"},
            {"title": "The Pragmatic Programmer", "author": "Andrew Hunt", "category": "Technical"},
            {"title": "Code Complete", "author": "Steve McConnell", "category": "Technical"},
            {"title": "Test Driven Development", "author": "Kent Beck", "category": "Technical"},
            {"title": "Continuous Delivery", "author": "Jez Humble", "category": "Technical"},
            {"title": "Domain-Driven Design", "author": "Eric Evans", "category": "Technical"}
            // Add more technical books here
        ];

        return technicalBooks;
    }

    resource function get environmentVariables() returns json {
        json[] envList = [];
        map<string> listEnv = os:listEnv();
        foreach var key in listEnv.keys() {
            json env = {"key": key, "value": listEnv[key]};
            envList.push(env);
        }
        return envList;
    }
}
