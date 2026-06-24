fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn f_gold(mut A:&[f32], mut B:&[f32]) -> i32 { 
    A.sort();
    B.sort();
    let mut a = 0;
    let mut b = 0;
    let mut result = f32::MAX;
    while a < m && b < n  {
        if A[a] - B[b] < result  {result = A[a] - B[b];} 
        if A[a] < B[b] {a += 1;} 
        else {b += 1;}
    }
    result
}
