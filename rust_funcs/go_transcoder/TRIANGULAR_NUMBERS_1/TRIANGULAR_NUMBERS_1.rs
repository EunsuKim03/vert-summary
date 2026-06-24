fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(num: i32) -> i32 {
    if num < 0 {
        return 0;
    }
    let c = (-2 * num) as f32;
    let b = 1.0;
    let a = 1.0;
    let d = (b * b) - (4.0 * a * c);
    if d < 0.0 {
        return 0;
    }
    let root1 = (-b + d.sqrt()) / (2.0 * a);
    let root2 = (-b - d.sqrt()) / (2.0 * a);
    if root1 > 0.0 && root1.floor() == root1 {
        return 1;
    }
    if root2 > 0.0 && root2.floor() == root2 {
        return 1;
    }
    0
}
