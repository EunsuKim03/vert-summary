fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::HashMap;

fn f_gold(N: i32) -> i32 {
   let mut dp: HashMap<i32, i32> = HashMap::new();
   dp.insert(0, 1);
   dp.insert(1, 2);
   let mut i = 2;
   while dp.get(&(i - 1)).unwrap() + dp.get(&(i - 2)).unwrap() <= N {
       dp.insert(i, dp.get(&(i - 1)).unwrap() + dp.get(&(i - 2)).unwrap());
       i += 1;  
   }
   i - 2
}
