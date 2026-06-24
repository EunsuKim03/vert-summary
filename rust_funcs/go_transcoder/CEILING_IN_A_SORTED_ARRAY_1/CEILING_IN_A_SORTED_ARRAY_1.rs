fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp;


fn f_gold(arr: [i32;2], low: i32, high: i32, x: i32) -> i32 {
    let mid;
    if x <= arr[low as usize] {
        return low;
    }
    if x > arr[high as usize] {
        return -1;
    }
    mid = (low + high) / 2;
    if arr[mid as usize] == x {
        return mid;
    } 
    else if arr[mid as usize] < x {
        if mid + 1 <= high && x <= arr[(mid + 1) as usize] {
            return mid + 1;
        } else {
            return f_gold(arr, mid + 1, high, x);
        }
    } else {
        if mid - 1 >= low && x > arr[(mid - 1) as usize] {
            return mid;
        } else {
            return f_gold(arr, low, mid - 1, x);
        }
    } 
}
