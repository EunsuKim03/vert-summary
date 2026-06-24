fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold( mut arr: [i32;2], n: i32) -> i32 {
    if n == 1 {
        return arr[0]; 
    }
    let mut dec = vec![0; n as usize];
    let mut inc = vec![0; n as usize];
    dec[0] = inc[0] = arr[0];
    let mut flag = 0;
    for i in 1..n {
        for j in 0..i {
            if arr[j] > arr[i] {
                dec[i as usize] = dec[i as usize].max(inc[j as usize] + arr[i]);
                flag = 1;
            } else if arr[j] < arr[i] && flag == 1 {
                inc[i as usize] = inc[i as usize].max(dec[j as usize] + arr[i]);
            }
        }
    }
    let mut result = f32::MIN;
    for i in 0..n {
        result = result.max(inc[i as usize]);
        result = result.max(dec[i as usize]);
    }
    result as i32
}
