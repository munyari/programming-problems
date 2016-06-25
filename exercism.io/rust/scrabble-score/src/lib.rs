use std::collections::HashMap;

pub fn score(word: &str) -> u8 {
    let score_map = construct_score_map();
    let uppercased = word.chars().map(|c| c.to_uppercase().next().unwrap());
    uppercased.fold(0, |acc, c| acc + score_map.get(&c).unwrap_or(&0))
}

fn construct_score_map() -> HashMap<char, u8> {
    let mut score_map: HashMap<char, u8> = HashMap::new();
    score_map.insert('A', 1);
    score_map.insert('B', 3);
    score_map.insert('C', 3);
    score_map.insert('D', 2);
    score_map.insert('E', 1);
    score_map.insert('F', 4);
    score_map.insert('G', 2);
    score_map.insert('H', 4);
    score_map.insert('I', 1);
    score_map.insert('J', 8);
    score_map.insert('K', 5);
    score_map.insert('L', 1);
    score_map.insert('M', 3);
    score_map.insert('N', 1);
    score_map.insert('O', 1);
    score_map.insert('P', 3);
    score_map.insert('Q', 10);
    score_map.insert('R', 1);
    score_map.insert('S', 1);
    score_map.insert('T', 1);
    score_map.insert('U', 1);
    score_map.insert('V', 4);
    score_map.insert('W', 4);
    score_map.insert('X', 8);
    score_map.insert('Y', 4);
    score_map.insert('Z', 10);
    score_map

}
