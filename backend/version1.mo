import List "mo:base/List";
import Time "mo:base/Time";

persistent actor {

    type Message = Text;

    let log = List.empty<Text>();

    let times = List.map<Text, Int>(log, func msg = -1);

    public func add(msg : Text) {
        List.add(log, msg);
        List.add(times, Time.now());
    };

};