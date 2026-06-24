fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [i32;2], n: i32, x: i32, k: i32) -> i32 {
  let mut i: f32 = 0.;
  while i < n as f32{
    if arr[i as usize] == x {return i as i32;}
    i = i + f32::max(1., (arr[i as usize] - x) as f32 / k as f32);
  }
  println!("number is not present!");
  return -1; 
}
