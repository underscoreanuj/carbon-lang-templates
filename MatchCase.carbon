package Test api;
//Carbon has match keyword which is similar to switch in C/C++. Syntax for match is
/*
match(condition) {
  case (condition) => {
    //doSomething;
  }
  default => {
    //doSomething;
  }
}
*/
fn Matcher(var num: i32) -> i32 {
  var number: auto = 10;
  match (number) {
    case 5 => {
      Print("Got 5");
      return number;
    }
    case 10 => {
      Print("Got 10");
      return number;
    }
    default => {
      Print("Default");
      return number;
    }
  }
}

fn Main() -> i32 {
    Matcher(5);
    Matcher(10);
    Matcher(2);
    return 0;
}
