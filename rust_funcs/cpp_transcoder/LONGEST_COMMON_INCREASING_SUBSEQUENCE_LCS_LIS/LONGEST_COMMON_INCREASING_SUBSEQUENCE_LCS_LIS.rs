fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;
use std::vec;

fn f_gold(arr1: [i32;2], n: i32, arr2: [i32;2], m: i32) -> i32 {
    let mut table = vec![0; m as usize];
    for i in 0..n {
        let mut current = 0;
        for j in 0..m {
            if arr1[i as usize] == arr2[j as usize] {
                if current + 1 > table[j as usize] {
                    table[j as usize] = current + 1;
                }
            }
            if arr1[i as usize] > arr2[j as usize] {
                if table[j as usize] > current {
                    current = table[j as usize];
                }
            }
        }
    }
    let mut result = 0;
    for i in 0..m as usize {
        if table[i] > result {
            result = table[i];
        }
    }
    result
}
