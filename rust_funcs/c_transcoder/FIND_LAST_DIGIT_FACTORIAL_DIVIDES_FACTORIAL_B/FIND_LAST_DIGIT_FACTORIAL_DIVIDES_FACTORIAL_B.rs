fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(A: i32, B: i32) -> i32 {
  let mut variable = 1;
  if A == B {
    return 1;
  } else if (B - A) >= 5 {
    return 0;
  } else {
    for i in (A+1)..=B {
      variable = (variable * (i as f32 % 10.0) as i32) % 10; 
    }
  return variable % 10;  
 } 
}
