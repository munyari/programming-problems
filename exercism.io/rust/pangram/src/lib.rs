use std::collections::HashSet;
use std::ascii::AsciiExt;

pub fn is_pangram(sentence: &str) -> bool {
    if sentence.is_empty() {
        return false;
    }
    let set: HashSet<char> = sentence.to_lowercase()
        .chars()
        .filter(|x| x.is_alphabetic() && x.is_ascii())
        .collect();
    return set.len() == 26;
}
