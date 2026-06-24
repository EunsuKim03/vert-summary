fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;

fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    arr.sort();
    let mut max_count = 1; 
    let mut res = arr[0];
    let mut curr_count = 1;
    for i in 1..n as usize {
        if arr[i] == arr[i-1] {
            curr_count += 1;
        } else {
            if curr_count > max_count {
                max_count = curr_count;
                res = arr[i-1];
            }
            curr_count = 1;
        }
    }
    if curr_count > max_count {
        max_count = curr_count;
        res = arr[n as usize - 1];
    }
    res
}
