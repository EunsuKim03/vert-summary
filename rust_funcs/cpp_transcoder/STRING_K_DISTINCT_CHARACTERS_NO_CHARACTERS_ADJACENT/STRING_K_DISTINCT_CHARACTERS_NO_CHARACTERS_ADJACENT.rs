fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;

fn f_gold(n: i32, k: i32) -> String {
  let mut res = String::new();
  for i in 0..k {
    res.push((b'a' + i as u8) as char);
  }
  let mut count = 0;
  for i in 0..n-k {
    res.push((b'a' + count as u8) as char);
    count += 1;
    if count == k {
      count = 0;
    }
  }
  res
}
