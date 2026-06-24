fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr1: [f32;2], arr2: [f32;2], m: i32, n: i32, k: i32) -> i32 {
    let mut sorted1: Vec<f32> = Vec::with_capacity(m as usize + n as usize);
    let mut i = 0; 
    let mut j = 0;
    let mut d = 0;
    while i < m as usize && j < n as usize {
        if arr1[i] < arr2[j] {
            sorted1[d] = arr1[i];
            i += 1; 
        } else {
            sorted1[d] = arr2[j];
            j += 1;
        }
        d += 1;
    }
    while i < m as usize {
        sorted1[d] = arr1[i];
        i += 1;
        d += 1; 
    }
    while j < n as usize {
        sorted1[d] = arr2[j];
        j += 1;
        d += 1;
    }
    sorted1[k as usize - 1]
}
