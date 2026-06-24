fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(low: i32, high: i32) -> i32 {
   let mut fact = 1.;
   let mut x = 1;
   while fact < low as f32  {
        fact *= x as f32;
        x += 1;
   }
   let mut res = 0;
   while fact <= high as f32 {
        res += 1;
        fact *= x as f32;
        x += 1;
   }
   res
}
