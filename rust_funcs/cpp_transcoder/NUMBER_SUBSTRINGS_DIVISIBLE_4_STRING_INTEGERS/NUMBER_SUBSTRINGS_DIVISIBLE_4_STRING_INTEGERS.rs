fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::str;

fn f_gold(s: &str) -> i32 {
    let n = s.len();
    let mut count = 0;
    for i in 0..n {
        if s.chars().nth(i).unwrap() == '4' || s.chars().nth(i).unwrap() == '8' || s.chars().nth(i).unwrap() == '0' {
            count += 1;
        }
    }
    for i in 0..n-1 {
        let h = (s.chars().nth(i).unwrap() as i32 - '0' as i32) * 10 + (s.chars().nth(i + 1).unwrap() as i32 - '0' as i32);
        if h % 4 == 0 {
            count += i as i32 + 1;
        }
    }
    count
}
