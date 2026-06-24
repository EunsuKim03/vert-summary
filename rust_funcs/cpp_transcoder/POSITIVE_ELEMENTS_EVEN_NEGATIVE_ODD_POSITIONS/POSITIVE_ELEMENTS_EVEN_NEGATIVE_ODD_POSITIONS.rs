fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a: &mut [f32], size: u32) {
    let mut positive = 0;
    let mut negative = 1;
    loop {
        while positive < size && a[positive] >= 0.0 {
            positive += 2;
        }
        while negative < size && a[negative] <= 0.0 {
            negative += 2;
        }
        if positive < size && negative < size {
            a.swap(positive, negative);
        } else {
            break; 
        }
    }
}
