import ballerina/http;
import ballerina/log;

service / on new http:Listener(8090) {

    resource function post .(@http:Payload RewardEvent payload) returns error? {
        log:printInfo("Hello you've got a reward, " + payload.userId + " : " + payload.rewardId);
    }
}

public type RewardEvent record {|
    string userId;
    string rewardId;
    string rewardConfirmationNumber;
|};
