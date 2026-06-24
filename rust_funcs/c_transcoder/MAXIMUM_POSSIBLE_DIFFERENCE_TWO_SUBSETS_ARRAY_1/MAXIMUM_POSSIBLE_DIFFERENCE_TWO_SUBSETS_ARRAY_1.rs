fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(arr: &mut [f32], n: i32) -> i32 {
    let mut result = 0;
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut i = 0;
    while i < n as usize - 1{
        if arr[i] != arr[i+1] {
            result += (arr[i] as i32).abs();
        } else {
            i+=1;
        }
        i+=1;
    }
    if arr[n as usize - 2] != arr[n as usize - 1] {
        result += (arr[n as usize - 1] as i32).abs();
    }
    result
}
