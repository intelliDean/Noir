// main.nr
struct Number {
    right: Field,
    left: Field,
}

fn add_numbers(numbers: [Number; 3]) -> Field {
    numbers[2].right + numbers[2].left
}



pub fn main() {
    let numbers =
        [Number { right: 1, left: 2 }, Number { right: 3, left: 4 }, Number { right: 5, left: 6 }];

    let result = add_numbers(numbers);
    print(result);
}


#[test]
fn test_main() {
    let numbers =
        [Number { right: 1, left: 2 }, Number { right: 3, left: 4 }, Number { right: 5, left: 6 }];

    let res = add_numbers(numbers);

    assert_eq(res, Field::from(11));
}