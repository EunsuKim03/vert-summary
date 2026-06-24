fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(s1: &mut [char], s2: &mut [char], index: u32) {
   s2[index] = s1[index];
   if s1[index] == '\0' {
       return;
   }
   f_gold(s1, s2, index + 1);
}
