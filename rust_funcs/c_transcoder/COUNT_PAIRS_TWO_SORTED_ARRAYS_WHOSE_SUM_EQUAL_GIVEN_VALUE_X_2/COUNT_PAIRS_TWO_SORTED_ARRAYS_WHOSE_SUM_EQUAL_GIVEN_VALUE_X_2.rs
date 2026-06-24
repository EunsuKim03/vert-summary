fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;


fn f_gold (arr1: Vec<f32>, arr2: Vec<f32>, m: f32, n: f32, x: f32) -> i32 {
    let mut count = 0f32;
    let mut l = 0f32; 
    let mut r = n - 1f32;
    while l < m && r >= 0f32 {
        if (arr1[l as usize] + arr2[r as usize]) == x {
            l += 1f32;
            r -= 1f32;
            count += 1f32;
        } else if (arr1[l as usize] + arr2[r as usize]) < x {
            l += 1f32;
        } else {
            r -= 1f32;
        }
    }
    count
}
