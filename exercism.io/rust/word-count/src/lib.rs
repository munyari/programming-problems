use std::collections::HashMap;
use std::collections::HashSet;

fn is_symbol(c: char) -> bool {
    let a: HashSet<char> = " _-!@#$%^&*().,:".chars().collect();
    a.contains(&c)
}

pub fn word_count(string: &str) -> HashMap<String, u32> {
    let filtered = string
        .split(is_symbol)
        .filter(|x| !x.is_empty())
        .map(|x| x.to_lowercase());

    let mut map: HashMap<String, u32> = HashMap::new();
    for c in filtered {
        let val = map.entry(String::from(c)).or_insert(0);
        *val += 1;
    }
    map
}
