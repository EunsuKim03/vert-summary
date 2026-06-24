fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::io;

fn f_gold(arr: &mut [f32], n: i32, sum: i32) -> i32 {
    let mut curr_sum = arr[0 as usize];
    let mut i = 0 as usize;
    let mut j = 1 as usize;
    for i in 0..n as usize  {
        curr_sum = arr[i];
        for j in i+1..n as usize {
            if curr_sum == sum as f32 {
                println!("Sum found between indexes {} and {}", i, j-1);
                return 1;
            }
            if curr_sum > sum as f32 || j == n as usize {
                break;
            }
            curr_sum += arr[j];
        }
    }
    println!("No subarray found");
    0 
}
