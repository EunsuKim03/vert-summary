fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(mut a: i32, mut b: i32, mut d: i32) -> i32 {
    let mut temp = a;
    a = a.min(b);
    b = temp.max(b);
    if d >= b {
        return (d + b - 1) as i32 / b;
    } 
    if d == 0 {
        return 0;
    }
    if d == a  {
        return 1;
    }
    return 2;
}
