fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(arr: &mut [f32], n: u32) -> i32 {
   let mut temp = arr.to_vec();
   temp.sort();
   let mut front;
   for front = 0; front < n; front += 1  {
       if temp[front] != arr[front] {
           break;
       }
   }  
   let mut back;
   for back = n - 1; back >= 0; back -= 1 {
       if temp[back] != arr[back] {
           break;
       }
   }
   if front >= back {
       return 1;
   } 
   while front != back {
       front += 1;
       if arr[front - 1].partial_cmp(&arr[front]).unwrap() == Ordering::Less {
           return 0;
       }
   }
   1
}
