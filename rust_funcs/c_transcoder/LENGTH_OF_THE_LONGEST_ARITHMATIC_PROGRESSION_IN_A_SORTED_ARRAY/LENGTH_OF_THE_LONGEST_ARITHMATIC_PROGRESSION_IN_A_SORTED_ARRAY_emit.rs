#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
#[no_mangle]
fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
#[no_mangle]
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
#[no_mangle]
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
#[no_mangle]
fn len(arr: &[i32]) -> usize {arr.len()}
#[no_mangle]
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


#[no_mangle]
fn f_gold(set: [i32;2], n: i32) -> i32 {
   if n <= 2 {
     return n;
   }
   let mut llap = 2;
   let mut L = vec![vec![2; n as usize]; n as usize];
   for i in 0..n as usize {
     L[i][(n - 1) as usize] = 2;
   }
   for j in (2..n).rev() {
     let mut i = j - 1;
     let mut k = j + 1;
     while i >= 0 && k <= n - 1 {
       if set[i as usize] + set[k as usize] < 2 * set[j as usize]  {
         k += 1;
       } else if set[i as usize] + set[k as usize] > 2 * set[j as usize] {
         L[i as usize][j as usize] = 2;
         i -= 1;
       } else {
         L[i as usize][j as usize] = L[j as usize][k as usize] + 1;
         llap = max(llap, L[i as usize][j as usize]);
         i -= 1;
         k += 1;
       }
     }
     while i >= 0 {
       L[i as usize][j as usize] = 2;
       i -= 1;
     }
   }
   llap
}
