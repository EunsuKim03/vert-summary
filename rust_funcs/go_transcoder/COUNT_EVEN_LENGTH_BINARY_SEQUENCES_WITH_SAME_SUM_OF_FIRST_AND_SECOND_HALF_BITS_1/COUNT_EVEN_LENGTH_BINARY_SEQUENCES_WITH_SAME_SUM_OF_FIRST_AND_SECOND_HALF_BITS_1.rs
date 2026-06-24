fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: i32) -> i32 {
   let mut n_cr: f32 = 1f32;
   let mut res: i32 = 1;
 
   for r in 1..=n {
        n_cr = (n_cr * (n + 1 - r) as f32) / r as f32;
        res += n_cr as i32 * n_cr as i32;
   }
   res
}
