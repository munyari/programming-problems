fn main() {
    let total = (1..1001)
                .filter(|x| x % 3 == 0 || x % 5 == 0)
                .fold(0, |acc, x| acc + x);
    println!("{}", total);
}
