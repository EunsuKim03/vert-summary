fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(arr1: [f32;2], arr2: [f32;2], n1: u32, n2: u32) -> i32 {
    let mut max = arr1[0];
    let mut min = arr2[0];
    let mut i = 1;
    while i < n1 && i < n2 {
        if arr1[i] > max {
            max = arr1[i];
        }
        if arr2[i] < min {
            min = arr2[i];
        }
        i += 1;
    }
    while i < n1 {
        if arr1[i] > max {
            max = arr1[i];
        }
        i += 1;
    }
    while i < n2 {
        if arr2[i] < min {
            min = arr2[i];
        }
        i += 1;
    }
    max * min
}
