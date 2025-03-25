import Array "mo:base/Array";
import Time "mo:base/Time";
import Map "mo:base/pure/Map";
import Int "mo:base/Int";
import Iter "mo:base/Iter";

(
    with migration = func({ log : [Text]; times : [Text] }) : {
        log : [(Int, Text)];
    } = { log = Map.fromIter(Iter.zip(times.values(), log.values)) }
) persistent actor {

    type Message = Text;

    var log = Map.empty<Int, Text>();

    public func add(msg : Text) {
        log := Map.add(log, Int.compare, Time.now(), msg);
    };

};