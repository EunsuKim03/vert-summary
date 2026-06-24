fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(mut n: i32) -> i32 {
let  mut prev_prev: f32 = 1.0;
let mut prev: f32 = 2.0;
let mut  curr:f32 = 3.0;
while n > 0  {
    prev_prev = prev;
    prev = curr;
    curr = prev_prev + prev;
    n = n + ((curr - prev - 1.0) as i32); 
}
n = n + ((curr - prev - 1.0) as i32);
return (prev + n as f32) as i32;
}
