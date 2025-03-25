import List "mo:base/List";

persistent actor {

    let log = List.empty<Text>();

    public func add(msg : Text) {
        List.add(log, msg);
    };

};