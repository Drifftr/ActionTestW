import ballerina/http;

service / on new http:Listener(9090) {

    resource function post .(@http:Payload RewardEvent payload) returns string|error {
        // Send a response back to the caller.
        return "Hello you've got a reward, " + payload.userId + " : " + payload.rewardId;
    }
}

public type RewardEvent record {|
    string userId;
    string rewardId;
    string rewardConfirmationNumber;
|};