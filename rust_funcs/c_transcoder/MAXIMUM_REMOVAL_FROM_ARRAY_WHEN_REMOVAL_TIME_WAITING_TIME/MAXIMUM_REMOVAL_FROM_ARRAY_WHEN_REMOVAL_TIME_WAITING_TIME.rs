fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;

fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
    let mut count = 0;
    let mut cummulative_sum = 0;
    arr.sort_by(|a, b| a.cmp(b));
    for i in 0..n {
        if arr[i as usize] >= cummulative_sum as i32 {
            count += 1;
            cummulative_sum += arr[i as usize];
        }
    }
    count
}
