fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str::CharIndices;

fn f_gold(N: String) -> i32 {
   let len = N.len();
   let l = len / 2;
   let mut count = 0;
   for i in 1..=l {
       let s = &N[..i]; 
       let l1 = s.len();
       let t = &N[i..i + l1];
       if s.starts_with('0') || t.starts_with('0') { continue; }
       if s == t {count += 1;}
   }
   count
}
