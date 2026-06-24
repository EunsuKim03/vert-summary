fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::HashMap;

fn f_gold(arr: &mut [f32], n: i32) -> i32 {
    use std::collections::HashMap;
    let mut dimension = [0.0, 0.0];
    let mut i = 0;
    let mut j = 0;
    while i < n as usize - 1 && j < 2  {
        if arr[i] == arr[i+1] {
            dimension[j] = arr[i] as f32; 
            i += 1; 
            j += 1;
        }
        i += 1;
    }
    dimension[0] * dimension[1]
}
