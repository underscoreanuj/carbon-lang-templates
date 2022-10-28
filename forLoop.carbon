package ForLoop api;
//For Loop  in carbon language
//for ( var declaration in expression ) { statements }
fn Main() -> i32 {
var names: [String;] = ("Ironman", "Thor", "Hulk");
for (var name: String in names) {
  Print(name);
}
return 0;
}
