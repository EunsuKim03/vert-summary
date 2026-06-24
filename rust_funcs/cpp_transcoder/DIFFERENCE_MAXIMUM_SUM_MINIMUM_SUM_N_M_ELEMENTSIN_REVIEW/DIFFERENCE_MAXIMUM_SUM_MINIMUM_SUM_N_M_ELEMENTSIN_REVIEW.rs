fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;

fn f_gold(arr: &mut [f32], n: i32, m: i32) -> i32 {  
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut max = 0.0;
    let mut min = 0.0;
    for i in 0..m {
        min += arr[i as usize];
        max += arr[(n - 1 - i) as usize];
    }
    max - min
}
