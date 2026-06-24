fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::consts::PI;

fn f_gold(r: i32, R: i32, r1: i32, x1: i32, y1: i32) -> i32 {
    let dis = (x1 as f32).powi(2) + (y1 as f32).powi(2);
    let dis = dis.sqrt();
    let r1 = r1 as f32;
    let r = r as f32;
    let R = R as f32;
    dis - r1 >= R && dis + r1 <= r
}
