fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(side: i32) -> f32 {
    let root_5 = 5.0_f32.sqrt();
    let constant = (15.0 + (7.0 * root_5)) / 4.0;
    let side_f32 = side as f32;
    let side_cubed = side_f32.powi(3);
    constant * side_cubed
}
