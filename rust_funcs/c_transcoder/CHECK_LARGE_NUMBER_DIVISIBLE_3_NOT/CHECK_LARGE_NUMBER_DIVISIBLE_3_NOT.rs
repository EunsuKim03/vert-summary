fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str : &str) -> i32 {
    let n = str.len();
    let mut digit_sum = 0;
    for i in 0..n {
         digit_sum += str.chars().nth(i).unwrap() as u8 - b'0';   }
     digit_sum % 3 == 0
}
