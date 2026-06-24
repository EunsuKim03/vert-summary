fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std:: str; 

fn f_gold(str: String) -> i32 {
   let n = str.len();
   let mut digitSum = 0;
   for i in 0..n {
       digitSum += (str.chars().nth(i).unwrap() as i32) - 48; 
   }
   if digitSum % 9 == 0 {
       return 1
   }  
   else {
       return 0
   }
}
