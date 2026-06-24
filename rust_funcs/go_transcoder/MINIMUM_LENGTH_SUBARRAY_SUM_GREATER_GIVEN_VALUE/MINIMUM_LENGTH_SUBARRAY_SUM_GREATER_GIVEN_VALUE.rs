fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::INFINITY;
 fn f_gold(arr: [i32;2], n: i32, x: i32) -> i32 { 
     let mut curr_sum = 0.0;
     let mut min_len = INFINITY as i32;
     let mut start = 0;
     let mut end = 0;
     while end < n as usize { 
        while curr_sum <= x as f32 && end < n as usize { 
            curr_sum += arr[end] as f32;
            end += 1; 
        } 
        while curr_sum > x as f32 && start < n as usize { 
            min_len = std::cmp::min(min_len, (end - start) as i32);
            curr_sum -= arr[start] as f32;
            start += 1; 
        } 
     }  
     min_len
}
