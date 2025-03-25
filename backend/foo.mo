import Map "mo:base/pure/Map";
import Text "mo:base/Text";
import Array "mo:base/Array";

actor {
    public func example() : async () {
        var map = Map.empty<Text, Nat>();
        map := Map.add(map, Text.compare, "key", 123);
        assert Map.size(map) == 1;
        assert Array.fromIter(Map.entries(map)) == [("key", 123)];
    };
};