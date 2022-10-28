package ConditionalIf api;
//condtionals in carbon are similar to other languages with keywords like if,else etc.

fn Main() -> i32 {
  var x: i32 = 18;
  if(x >= 18) {
    Print("eligible to vote");
  } else {
    Print("not eligible to vote");
  }
  return 0;
}
