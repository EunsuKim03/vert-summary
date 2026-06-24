fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

 
use std::f32;

fn f_gold(x: u32) -> u32 {
    let mut even_bits = x & 0xAAAAAAAA; 
    let mut odd_bits = x & 0x55555555;
    even_bits >>= 1;
    odd_bits <<= 1;
    even_bits | odd_bits
}
