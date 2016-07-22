use std::collections::HashMap;

pub fn nucleotide_counts(dna_str: &str) -> HashMap<char, usize> {
    let mut map: HashMap<char, usize> = HashMap::new();
    map.insert('A', 0);
    map.insert('T', 0);
    map.insert('C', 0);
    map.insert('G', 0);
    for c in dna_str.chars() {
        let val = map.entry(c).or_insert(0);
        *val += 1;
    }
    map
}

pub fn count(nucleotide: char, dna_str: &str) -> usize {
    dna_str.chars().filter(|&c| c == nucleotide).count()
}
