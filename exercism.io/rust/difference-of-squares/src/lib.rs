fn squared(num: i32) -> i32 {
    num * num
}

pub fn square_of_sum(num: i32) -> i32 {
    squared((num * (num + 1)) / 2)
}

pub fn sum_of_squares(num: i32) -> i32 {
    (num * (num + 1) * (2 * num + 1))/6
}

pub fn difference(num: i32) -> i32 {
    square_of_sum(num) - sum_of_squares(num)
}
