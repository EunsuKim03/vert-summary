fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(arr: [f32;2], n: u32, x: f32) -> i32 {
    let mut curr_sum = 0f32;
    let mut min_len = n + 1;
    let mut start = 0;
    let mut end = 0;
    while end < n {
        while curr_sum <= x && end < n {
            if curr_sum <= 0f32 && x > 0f32 {
                start = end;
                curr_sum = 0f32;
            }
            curr_sum += arr[end];
            end += 1;
        }
        while curr_sum > x && start < n {
            if end - start < min_len {
                min_len = end - start;
            }
            curr_sum -= arr[start];
            start += 1;     
        }
    }
    min_len
}
