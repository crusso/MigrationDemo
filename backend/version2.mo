import Time "mo:base/Time";
import Map "mo:base/Map";
import Int "mo:base/Int";
import Iter "mo:base/Iter"

(with migration = 
    func({ log : [Text]; times : [Int] }) : {
        log : Map.Map<Int, Text>;
    } = { log = Map.fromIter(Iter.zip(times.values(), log.values()), Int.compare) }) 
persistent actor {

    let log = Map.empty<Int, Text>();

    public func add(msg : Text) {
        Map.add(log, Int.compare, Time.now(), msg);
    };

};