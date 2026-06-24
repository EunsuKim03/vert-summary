fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::BufRead;
use std::io::BufReader;

fn f_gold(arr1: [i32;2], arr2: [i32;2], m: i32, n: i32, x: i32) -> i32 {
let mut count = 0;  
for i in 0..m {      
    for j in 0..n {         
        if arr1[i as usize] + arr2[j as usize] == x {            
            count += 1;       
        }   
    }
}
count
}
