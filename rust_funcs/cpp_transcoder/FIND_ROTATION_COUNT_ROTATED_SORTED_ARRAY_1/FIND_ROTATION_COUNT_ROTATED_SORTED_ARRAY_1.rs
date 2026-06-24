fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32{ 
    if high < low {  
        return 0;  
    }
    if high == low {  
        return low;  
    }
    let mid = low + (high - low) / 2; 
    if mid < high && arr[mid + 1] < arr[mid] {  
        return mid + 1;
    }
    if mid > low && arr[mid] < arr[mid - 1] {  
        return mid;
    } 
    if arr[high] > arr[mid] { 
        f_gold(arr, low, mid - 1) 
    } else {
        f_gold(arr, mid + 1, high)
    } 
}
