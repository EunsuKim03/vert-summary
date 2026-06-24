fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
    arr.sort_by(|a, b| a.cmp(b));
    let mut a = 0; 
    let mut b = 0;
    for i in 0..n  {
        if i % 2 == 0 {
           a = a * 10 + arr[i as usize];
        } else {
           b = b * 10 + arr[i as usize]; 
        }
    }
    a + b
}
