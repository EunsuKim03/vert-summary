fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::path::Path;

fn f_gold(arr: &mut [f32], n: u32) -> i32 {
    let mut subset_sum_1 = 0.0;
    let mut subset_sum_2 = 0.0;
    for i in 0..n {
        let mut is_single_occurence = 1;
        for j in (i + 1)..n {
            if arr[i] == arr[j] {
                is_single_occurence = 0;
                arr[i] = 0.0;
                arr[j] = 0.0;
                break;
            }
        }
        if is_single_occurence {
            if arr[i] > 0.0 {
                subset_sum_1 += arr[i];
            } else {
                subset_sum_2 += arr[i];
            }
        }
    }
    (subset_sum_1 - subset_sum_2).abs() as i32
}
