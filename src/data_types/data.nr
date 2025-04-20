// Transforms the field into an array of bits, Little Endian.
pub fn to_le_bits() -> [u1; 8] {
    let field = 2;
    let bits: [u1; 8] = field.to_le_bits();

    bits
}

// Transforms into an array of bytes, Little Endian
pub fn to_be_bits() -> [u1; 8] {
    let field = 2;
    let bits: [u1; 8] = field.to_be_bits();

    bits
}

#[test]
fn test_to_le() {
    let result = to_le_bits();
    let expected: [u1; 8] = [0, 1, 0, 0, 0, 0, 0, 0];
    assert_eq(result, expected);
}

#[test]
fn test_to_be() {
    let result = to_be_bits();
    let expected: [u1; 8] = [0, 1, 0, 0, 0, 0, 0, 0];
    assert_eq(result, expected);
}

#[test]
fn test_to_le_bytes() {
    let field = 2;
    let bytes: [u8; 8] = field.to_le_bytes();

    assert_eq(bytes, [2, 0, 0, 0, 0, 0, 0, 0]);
    assert_eq(Field::from_le_bytes::<8>(bytes), field);
}

#[test]
fn test_to_le_radix() {
        // 259, in base 256, little endian, is [3, 1].
        // i.e. 3 * 256^0 + 1 * 256^1
        let field = 259;

        // The radix (in this example, 256) must be a power of 2.
        // The length of the returned byte array can be specified to be
        // >= the amount of space needed.
        let bytes: [u8; 8] = field.to_le_radix(256);
        assert_eq(bytes, [3, 1, 0, 0, 0, 0, 0, 0]);
        assert_eq(Field::from_le_bytes::<8>(bytes), field);
    }

    #[test]
    fn test_pow() {
    let field = 2;
    let pow = field.pow_32(4); // 2 x 2 x 2 x 2 = 16
    assert(pow == 16);
}

#[test]
fn test_lt () {
    let field = 2;
    let field2 = 3;
    assert(field.lt(field2));
}
