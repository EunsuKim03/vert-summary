fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(ar: &mut [i32], n: i32) -> i32 {
   let mut res = 0;
   use std::cmp::Reverse;
   let mut i = 0;
   while i < n as usize - 1 {
       let mut count = 1;
       while i < n as usize - 1 && ar[i] == ar[i+1] {
           count += 1;
           i += 1;
       }  
       res = res.max(count);
       i += 1;  
   }
   res  
}
