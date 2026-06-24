fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;

fn f_gold(mut str: String, n: i32) -> String {
    let reverse_alphabet = String::from("zyxwvutsrqponmlkjihgfedcba");
    let l = str.len();
    for i in n..l {
        str.replace(i, 1, &reverse_alphabet[(str.chars().nth(i).unwrap() as usize) - 'a' as usize]);
    }
    str
}
