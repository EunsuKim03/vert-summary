fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &str) -> i32 {
    let n = str.len();
    let mut odd_dig_sum = 0; 
    let mut even_dig_sum = 0;
    for i in 0..n {
        if i % 2 == 0 {odd_dig_sum += str.chars().nth(i).unwrap().to_digit(10).unwrap() as i32}
        else {even_dig_sum += str.chars().nth(i).unwrap().to_digit(10).unwrap() as i32}
    }
    (odd_dig_sum - even_dig_sum) % 11 == 0
}
