import ballerina/http;
import ballerina/log;

configurable string name = ?;

service / on new http:Listener(9090) {

    resource function post .(@http:Payload RewardEvent payload) returns error? {
        log:printInfo("Hello you've got a reward, " + name + " : " + payload.rewardId);
    }
}

public type RewardEvent record {|
    string userId;
    string rewardId;
    string rewardConfirmationNumber;
|};