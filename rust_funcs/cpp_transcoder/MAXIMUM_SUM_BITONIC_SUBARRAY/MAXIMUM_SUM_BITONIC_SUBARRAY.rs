fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], n: u32) -> i32 { 
    let mut msis = vec![0f32; n]; 
    let mut msds = vec![0f32; n]; 
    let mut max_sum = f32::MIN; 

    msis[0] = arr[0]; 
    for i in 1..n {
        msis[i] = if arr[i] > arr[i - 1] { msis[i - 1] + arr[i] } else { arr[i] }; 
    } 
    msds[n - 1] = arr[n - 1]; 
    for i in (0..n - 1).rev() { 
        msds[i] = if arr[i] > arr[i + 1] { msds[i + 1] + arr[i] } else { arr[i] }; 
    } 
    for i in 0..n { 
        if max_sum < msis[i] + msds[i] - arr[i] { 
            max_sum = msis[i] + msds[i] - arr[i]; 
        } 
    } 
    max_sum 
}
