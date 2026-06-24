fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr:[f32;2], n:u32, x:f32) -> i32 {
    if x < arr[0] {
        return 0; 
    } else if x > arr[n-1]  {
        return n;
    }
    let mut lower_pnt = 0;
    let mut i = 1;
    while i < n && arr[i] < x {
        lower_pnt = i;
        i *= 2;
    }
    while lower_pnt < n && arr[lower_pnt] < x {
        lower_pnt += 1;
    }
    lower_pnt
}
