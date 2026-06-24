fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn f_gold(arr1: &[f32;2], arr2: &[f32;2]) -> i32 {
    let mut table = vec![0; arr2.len()];
    for i in 0..arr1.len() {
        let mut current = 0;
        for j in 0..arr2.len() {
            if arr1[i] == arr2[j] && current + 1 > table[j] {
                table[j] = current + 1;
            }
            if arr1[i] > arr2[j] && table[j] > current {
                current = table[j];
            }
        }
    }
    let mut result = 0;
    for i in 0..arr2.len() {
        result = cmp::max(result, table[i]);
    }
    result
}
