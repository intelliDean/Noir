fn unsigned_integer() -> u8 {
    let x: u8 = 23;
    let y: u8 = 10;
    let z = x + y;

    z
}

fn singed_integer() -> i8 {
    let x: i8 = -1;
    let y: i8 = -1;
    let z = x + y;
    z
}

#[test]
fn test_unsigned_integer() {
    let result = unsigned_integer();
    let expected: u8 = 33;
    assert_eq(result, expected);
}

#[test]
fn test_signed_integer() {
    let result = singed_integer();
    let expected: i8 = -2;
    assert_eq(result, expected);
}

#[test]
fn unsigned_u128() {

    let x = U128::from_integer(23); //convert from integer
    let y = U128::from_hex("0x7"); //convert from hex
    let res =  x + y; //both are U128

    assert_eq(res, U128::from_integer(30));
    assert_eq(res.to_integer(), 30);
}

#[test]
fn test_from_u64(x: u64, y: u64) {
    let z = U128::from_u64s_be(x,y);
    
    assert(z.hi == x as Field);
    assert(z.lo == y as Field);
}

#[test]
fn test_wrapping() {

    let x: u8 = 23;
    let y: u8 = 12;

    let res = std::wrapping_add(x, y);

    assert_eq(res, 35);
}


#[test]
fn test_boolean() {
    let t = true;
    let f: bool = !t;

    assert_eq(t, true);
    assert_eq(f, false);
}