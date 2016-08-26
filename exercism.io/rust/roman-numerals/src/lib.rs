const NUMERALS: [(u16, &'static str); 13]  = [
    (1000, "M"), (900, "CM"),
    (500, "D"), (400, "CD"),
    (100, "C"), (90, "XC"),
    (50, "L"), (40, "XL"),
    (10, "X"), (9, "IX"),
    (5, "V"), (4, "IV"),
    (1, "I"),
];

pub struct Roman {}

impl Roman {
    pub fn from(mut num: u16) -> String
    {
        let mut result: String = String::new();
        for &(dec, numeral) in NUMERALS.iter() {
            while dec <= num {
                result += numeral;
                num -= dec;
            }
        }
        result
    }
}
