import ballerina/http;

configurable string abc = ?;
configurable string def = ?;
configurable string lkk = ?;
configurable string ppls = ?;
# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string namedd
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the cacccller.
        if name is "" {
            return error("name should cnot be vvv empty!");
        }
        return "Addd " + abc;
    }
}
