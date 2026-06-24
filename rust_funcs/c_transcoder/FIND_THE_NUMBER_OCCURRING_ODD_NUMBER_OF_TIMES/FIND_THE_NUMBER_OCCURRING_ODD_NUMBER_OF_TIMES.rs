fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [i32;2], arr_size: i32) -> i32 {
    for i in 0..arr_size as usize {
        let mut count = 0;
        for j in 0..arr_size as usize {
            if arr[i] == arr[j] {
                count += 1;
            }
        }
        if count % 2 != 0 {
            return arr[i];
        }
    }
    -1
}
