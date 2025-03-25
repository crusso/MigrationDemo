import Time "mo:base/Time";
import Map "mo:base/Map";
import Int "mo:base/Int";
import { migration } "Migration"

(with migration) 
persistent actor {

    let log = Map.empty<Int, Text>();

    public func add(msg : Text) {
        Map.add(log, Int.compare, Time.now(), msg);
    };

};