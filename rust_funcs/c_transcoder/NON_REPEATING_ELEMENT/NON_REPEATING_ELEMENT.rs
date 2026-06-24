fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut n = n as usize; 
    for i in 0..n {
        let mut j = 0;
        while j < n {
            if i != j && arr[i] == arr[j] {
                break;
            }
            j += 1;
        }
        if j == n {
            return arr[i];
        }
    }
    -1
}
