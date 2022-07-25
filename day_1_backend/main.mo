import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
actor {

  //////////
  // Ex 1 //
  //////////
  public func add(number1 : Nat, number2 : Nat) : async Nat {
    let result = number1 + number2;
    return result;
  };

  //////////
  // Ex 2 //
  //////////
  public func square(number : Nat) : async Nat {
    let result = number * number;
    return result;
  };

  //////////
  // Ex 3 //
  //////////
  public func days_to_second(number : Nat) : async Nat {
    let result = number * 24 * 60 * 60;
    return result;
  };

  //////////
  // Ex 4 //
  //////////
  public func increment_counter(counter : Nat) : async Nat {
    return counter + 1;
  };

  //////////
  // Ex 4 //
  //////////
  public func clear_counter(counter : Nat) : async Nat {
    return 0;
  };

  //////////
  // Ex 6 //
  //////////
  public func divide(number1 : Nat, number2 : Nat) : async Nat {
    return number1 / number2;
  };

  //////////
  // Ex 7 //
  //////////
  public func is_even(number : Nat) : async Bool {
    if (number % 2 == 1) {
      return false;
    } else {
      return true;
    }
  };

  //////////
  // Ex 8 //
  //////////
  public func sum_of_array(array : [Nat]) : async Nat{
    var sum = 0;
    for (i in array.vals()) {
      sum := sum + i;
    };
    return sum;
  };


  //////////
  // Ex 9 //
  //////////
  public func maximum(array : [Nat]) : async Nat {
    var max = array[0];
    for (i in array.vals()) {
      if (i > max) {
        max := i;
      }
    };
    return max;
  };

  ///////////
  // Ex 10 //
  ///////////
  public func remove_from_array(array : [Nat], number : Nat) : async [Nat] {
    var new_array : [Nat] = [];
    for (i in array.vals()) {
      if (i != number) {
        new_array := Array.append<Nat>(new_array,[i]);
      }
    };
    return new_array;
  };

  ///////////
  // Ex 11 //
  ///////////
  public func selection_sort(array : [Nat]) : async [Nat] {
    var new_array : [var Nat] = Array.thaw<Nat>(array);
    var min : Nat = 0;
    for (i in Iter.range(0, new_array.size() - 2)) {
      min := i;
      for (j in  Iter.range(i + 1, new_array.size() - 1)) {
        if (new_array[j] < new_array[min]) {
          min := j;
        };
      };
      if (min != i) {
        var temp = new_array[i];
        new_array[i] := new_array[min];
        new_array[min] := temp;
      };

    };
    return Array.freeze<Nat>(new_array);
  };

};
