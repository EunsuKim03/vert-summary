fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::BinaryHeap; 


fn f_gold(a: &mut [f32], b: &mut [f32], m: u32, n: u32) -> i32 {
    a.sort_by(|a, b| a.partial_cmp(b).unwrap());
    b.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut i = 0;
    let mut j = 0;
    let mut result = f32::INFINITY;
    while i < m && j < n {
        let diff = (a[i] - b[j]).abs();
        if diff < result {
            result = diff;
        }
        match a[i].partial_cmp(&b[j]) {
            Some(Ordering::Less) => i += 1, 
            Some(Ordering::Greater) => j += 1,
            Some(Ordering::Equal) => {
                i += 1;
                j += 1;
            }
            None => unreachable!()
        }
    }
    result
}
