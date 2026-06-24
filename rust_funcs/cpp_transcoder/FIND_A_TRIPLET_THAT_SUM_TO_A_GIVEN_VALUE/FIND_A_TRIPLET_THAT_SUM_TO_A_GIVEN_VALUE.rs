fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;



fn f_gold(A: [f32;2], arr_size: u32, sum: f32) -> i32 {
    for i in 0..arr_size-2 {
        for j in i+1..arr_size-1 {
            for k in j+1..arr_size {
                if A[i] + A[j] + A[k] == sum {
                    return 1;   
                }
            }
        }
    }
    0 
}
