use std::collections::BTreeMap;

const SCORES: [i32; 7] = [1,2,3,4,5,8,10];

pub fn transform(input: &BTreeMap<i32, Vec<String>>) -> BTreeMap<String, i32> {
    let mut scrabble_map: BTreeMap<String, i32> = BTreeMap::new();
    for score in SCORES.iter() {
        match input.get(score) {
            None => (),
            Some(v) => {
                for letter in v {
                    scrabble_map.insert(letter.to_lowercase(), *score);
                }
            }
        }
    }
    scrabble_map
}
