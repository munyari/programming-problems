pub fn hamming_distance(str1: &str, str2: &str) -> 
Result<usize, &'static str> {
    if str1.len() != str2.len() {
        return Err("inputs of different length");
    }
    let distance = str1.chars()
                        .zip(str2.chars())
                        .filter( |&(first, last)| first != last )
                        .count();
    Ok(distance)
}
