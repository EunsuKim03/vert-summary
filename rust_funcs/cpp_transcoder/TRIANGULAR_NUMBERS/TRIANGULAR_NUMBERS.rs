fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;

fn f_gold(num: i32) -> i32 {  
     if num < 0 {
         return 0;  
     }  
     let mut sum = 0;  
     let mut n = 1;
     while sum <= num {
         sum += n;  
         if sum == num {
             return 1;  
         }  
         n += 1;    
     }  
     0
}
