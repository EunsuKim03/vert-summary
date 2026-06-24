fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::char;

fn f_gold(str : &str) -> i32 {
    let mut n = str.len();
    if n == 0 {return 0}
    if n == 1 {
        return (str.chars().nth(0).unwrap() as u8 - b'0') % 4 == 0;
    }
    let last = str.chars().nth(n - 1).unwrap() as u8 - b'0';
    let second_last = str.chars().nth(n - 2).unwrap() as u8 - b'0';
    return (second_last * 10 + last) % 4 == 0;
}
