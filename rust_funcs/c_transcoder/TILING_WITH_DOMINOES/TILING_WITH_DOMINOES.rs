fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32; 


fn f_gold(n: i32) -> i32 {
    let mut A = vec![1, 0];
    let mut B = vec![0, 1];
    for i in 2..=n as usize {
        A.push(A[i-2] + 2 * B[i-1]);
        B.push(A[i-1] + B[i-2]);
    }
    A[n as usize]
}
