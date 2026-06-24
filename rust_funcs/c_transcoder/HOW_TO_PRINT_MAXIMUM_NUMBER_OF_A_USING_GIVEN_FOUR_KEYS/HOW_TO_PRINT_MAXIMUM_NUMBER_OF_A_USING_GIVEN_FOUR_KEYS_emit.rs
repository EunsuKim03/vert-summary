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
fn f_gold(N: i32) -> i32 {
   if N <= 6 {return N;}
   let mut screen = vec![0; N as usize];
   for n in 1..=6 {
       screen[n as usize - 1] = n;
   } 
   for n in 7..=N {
       screen[n as usize - 1] = max(2 * screen[(n - 4) as usize], 
                                    max(3 * screen[(n - 5) as usize], 
                                         4 * screen[(n - 6) as usize]));
   }
   return screen[N as usize - 1]; 
}
