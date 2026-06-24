fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32::INFINITY;

fn f_gold(arr: [f32;2], n: u32) -> i32 {
    let mut min_ending_here = INFINITY;
    let mut min_so_far = INFINITY;
    for i in 0..n {
        if min_ending_here > 0.0 { 
            min_ending_here = arr[i];
        } else {
            min_ending_here += arr[i];
        }
        min_so_far = min_so_far.min(min_ending_here);
    }
    min_so_far
}
