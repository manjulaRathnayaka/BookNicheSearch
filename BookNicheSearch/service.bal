import ballerina/http;

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
}
