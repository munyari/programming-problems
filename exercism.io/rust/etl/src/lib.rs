use std::collections::BTreeMap;

pub fn transform(input: &BTreeMap<i32, Vec<String>>) -> BTreeMap<String, i32> {
    let mut scrabble_map: BTreeMap<String, i32> = BTreeMap::new();
    for (&score, letters) in input {
        for letter in letters {
            scrabble_map.insert(letter.to_lowercase(), score);
        }
    }
    scrabble_map
}
