import Map "mo:base/Map";
import Int "mo:base/Int";
import Iter "mo:base/Iter";

module Migration {

    public func migration({ log : [Text]; times : [Int] }) : {
        log : Map.Map<Int, Text>;
    } = { log = Map.fromIter(Iter.zip(times.values(), log.values()), Int.compare) }

};