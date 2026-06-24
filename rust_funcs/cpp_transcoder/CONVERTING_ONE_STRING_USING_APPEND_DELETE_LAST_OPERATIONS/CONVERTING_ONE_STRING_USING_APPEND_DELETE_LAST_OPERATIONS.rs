fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(str1: String, str2: String, k: i32) -> i32 {
    if (str1.len() + str2.len()) < k as usize {
        return 1;
    }
    let mut common_length = 0;
    let min_len = str1.len().min(str2.len());
    for i in 0..min_len {
        if str1.chars().nth(i) == str2.chars().nth(i) {
            common_length += 1;
        } else {
            break;
        }
    }
    if (k - str1.len() as i32 - str2.len() as i32 + 2 * common_length as i32) % 2 == 0 {
        return 1;
    }
    0
}
