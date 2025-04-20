

// This struct is now public
pub struct Animal {
    hands: Field,           // private to its module
    pub(crate) legs: Field, // accessible from the entire crate
    pub eyes: u8,           // accessible from anywhere
}

impl Animal {
    fn new(eyes: u8, hands: Field, legs: Field) -> Self {
        Self { eyes, hands, legs }
    }
}

#[test]
fn test_animal_struct() {
    let legs = 4;

    let dog = Animal::new(2, 0, legs);

    assert_eq(dog.eyes, 2);
}