#[test]
fn test_array() {
    let a = [1, 2, 3, 4, 5];

    let first = a[0];
    let ops = a[1] + a[3];

    assert(first == 1);
    assert_eq(ops, 6);
}

#[test]
fn test_mutable_array() {
    let mut arr = [1, 2, 3, 4, 5];
    assert(arr[0] == 1); // assert before updating

    arr[0] = 42; //updating
    assert(arr[0] == 42); //assert after updating
}

#[test]
fn test_instantiate_array() {
    let array: [Field; 5] = [0; 5]; // creating an array of 5 elements and all the elements are 0

    assert(array[0] == 0);
    assert(array[1] == 0);
    assert(array[2] == 0);
}

#[test]
fn test_multidimensional_array() {
    let array: [[Field; 2]; 2] = [[1, 2], [3, 4]]; // creating a 2x2 array
    let element = array[1][0];
    assert_eq(element, 3);
}

#[test]
fn test_map_array() {
    let a = [1, 2, 3];
    let b = a.map(|each_a| each_a * 2); // b is now [2, 4, 6]
    let c = b.map(|each_b| each_b + 4);

    assert_eq(b, [2, 4, 6]);
    assert_eq(c, [6, 8, 10]);
}

#[test]
fn test_fold() {
    // let a1 = [1];
    // let a2 = [1, 2];
    // let a3 = [1, 2, 3];

    // let f = |a, b| a - b;
    // a1.fold(10, f); //=> f(10, 1)
    // a2.fold(10, f); //=> f(f(10, 1), 2)
    // a3.fold(10, f); //=> f(f(f(10, 1), 2), 3)

    let arr = [2, 2, 2, 2, 2];
    let folded = arr.fold(0, |a, b| a + b);
    //first 2 + 2 will add into accumulator, continue adding like that
    assert(folded == 10);
}

#[test]
fn test_reduce() {
    let arr = [2, 2, 2, 2, 2];
    let reduced = arr.reduce(|a, b| a + b);
    //this sums all the elements in the array
    assert(reduced == 10);
}

#[test]
fn test_all() {
    let arr = [2, 2, 2, 2, 2];
    let all = arr.all(|a| a == 2);

    assert(all);
}

#[test]
fn test_any() {
    let arr = [2, 2, 2, 2, 5];
    let any = arr.any(|a| a == 5);
    assert(any);
}