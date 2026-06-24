fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;
use std::vec::Vec;

fn f_gold(str: String) -> i32 {
    let mut arr: Vec<(char, i32)> = vec![('@', -1)];
    let mut maxlen = 0;
    for (i, c) in str.chars().enumerate() {
        arr.push((c, i as i32));
        while arr.len() >= 3 && arr[arr.len() - 3].0 == '1' &&  arr[arr.len() - 2].0 == '0' && arr[arr.len() - 1].0 == '0' {
            arr.pop();
            arr.pop();
            arr.pop();
        }
        let tmp = arr[arr.len() - 1].1;
        maxlen = maxlen.max(i as i32 - tmp);
    }
    maxlen
}
