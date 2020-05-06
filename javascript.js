// example 1
function curryMethod_0() {
  return (x) => {
    return (y) => {
      return (z) => {
        return x + y + z;
      }
    }
  }
}
let test_1 = curryMethod_0();
test_2 = test_1(1)(1); // return Function (anonymous), because z is undefined
console.log(test_2(1)); // return 3

// example 2
const curryMethod_1 = (func) => (x) => (y) => (z) => func(x, y, z);
const sum = (x, y, z) => x + y + z;

let test_3 = curryMethod_1(sum);
console.log(test_3(10)(10)(10));