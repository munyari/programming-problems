pub fn sing(start: i32, end: i32) -> String {
    // inclusive range syntax is still experimental
    (end..(start+1))
        .rev()
        .map(verse)
        .collect::<Vec<_>>()
        .join("\n")
}

pub fn verse(num_left: i32) -> String {
    match num_left {
        0 => {
            "No more bottles of beer on the wall, no more bottles of beer.\nGo \
            to the store and buy some more, 99 bottles of beer on the wall.\n"
            .to_string()
        }
        1 => {
            "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and \
            pass it around, no more bottles of beer on the wall.\n"
            .to_string()
        }
        2 => {
            "2 bottles of beer on the wall, 2 bottles of beer.\nTake \
            one down and pass it around, 1 bottle of beer on the \
            wall.\n".to_string()
        }
        _ => {
            format!("{0} bottles of beer on the wall, {0} bottles of beer.\nTake \
            one down and pass it around, {1} bottles of beer on the \
            wall.\n", num_left, num_left - 1)
        }
    }
}
