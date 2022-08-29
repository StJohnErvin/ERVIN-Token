import Principal "mo:base/Principal";
import HashMap "mo:base/HashMap"

actor Token {
    
    var owner : Principal = Principal.fromText("xvgyb-w3y3z-iro3u-hkepc-ff4cb-w74mh-qytqw-ootsk-qw47v-3ultd-lae");
    var totalSupply : Nat = 1000000000;
    var symbol : Text = "ERVN";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);
    balances.put(owner, totalSupply);

    public query func balanceOf(who: Principal) : async Nat {
        let balance : Nat = switch (balances.get(who)) {
            case null 0;
            case (?result) result;
        };

         return balance;
    }


};