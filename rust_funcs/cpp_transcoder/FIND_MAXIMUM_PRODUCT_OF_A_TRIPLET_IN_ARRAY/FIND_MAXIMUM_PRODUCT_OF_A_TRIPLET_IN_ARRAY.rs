fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], n: f32) -> i32 {
    if n < 3.0 { 
        return f32::NAN
    }
    let mut max_product = f32::NEG_INFINITY;
    for i in 0..n as usize - 2 {
        for j in i+1..n as usize - 1 { 
            for k in j+1..n as usize {
                max_product = max_product.max(arr[i] * arr[j] * arr[k]);
            }
        }
    }
    max_product
}
