use std::convert::AsPrimitive;

#[test]
fn test_string_operation() {
    let message = "hello world";
    let message_bytes = message.as_bytes();
    let mut message_vec = message.as_bytes_vec();

    assert(message_bytes.len() == 11);
    assert(message_bytes[0] == 104);
    assert(message_bytes[0] == message_vec.get(0));

    let s = r"Hello world";
    let s = r#"Simon says "hello world""#;

    // Any number of hashes may be used (>= 1) as long as the string also terminates with the same number of hashes
    let s = r#####"One "#, Two "##, Three "###, Four "####, Five will end the string."#####;
}

/* Escape 	    Description
    \r	      Carriage Return
    \n	         Newline
    \t	           Tab
    \0	       Null Character
    \"	        Double Quote
    \\	        Backslash
*/

#[test]
fn test_string_format() {
    let four = 2 + 2;
    let s = f"Two plus two is: {four}";
    println(s);
}

#[test]
fn test_string_format_expanded() {
let four = 2 + 2;

// Prints "This is not expanded: {four}"
println(f"This is not expanded: {{four}}"); //to print {four}
}
