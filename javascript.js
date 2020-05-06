function curryMethod() {
  return (x) => {
    return (y) => {
      return (z) => {
        return x + y + z;
      }
    }
  }
}
let test_1 = curryMethod();
test_2 = test_1(1)(1); // return Function (anonymous), because z is undefined
console.log(test_2(1)); // return 3

