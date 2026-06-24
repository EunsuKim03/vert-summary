fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;  

fn f_gold(arr: [i32;2], n: u32) -> i32 {
    let mut ans = i32::MIN;
    let mut maxval = 1;
    let mut minval = 1;
    let mut prev_max;
    for i in 0..n {
        if arr[i] > 0 {
            maxval = maxval * arr[i] as i32;
            minval = (1 as i32).min(minval * arr[i]); 
        } else if arr[i] == 0 {
            minval = 1;
            maxval = 0;
        } else if arr[i] < 0 {
            prev_max = maxval;
            maxval = minval * arr[i] as i32;
            minval = prev_max * arr[i] as i32;
        }
        ans = ans.max(maxval);
        if maxval <= 0 {
            maxval = 1;
        }
    }
    ans
}
