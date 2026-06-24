fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a: i32, b: i32) -> i32 {  
    if b == 0 {  
        1 
    } else {
        let mut answer = a;  
        let mut increment = a;  
        for i in 1..b {  
            for j in 1..a {  
                answer += increment;  
            }  
            increment = answer;  
        }  
        answer  
    }
}
