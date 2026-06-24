fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::os::raw::c_char;

fn f_gold(arr1: *mut i32, arr2: *mut i32, m: i32, n: i32) -> i32 {
    let mut i = 0;
    let mut j = 0;
    while i < n {
        while j < m {
            unsafe {
                if *arr2.offset(i as isize) == *arr1.offset(j as isize) {
                    break;
                }
            }
            j += 1;
        }
        if j == m {
            return 0;
        }
        i += 1;
        j = 0;
    }
    1
}
