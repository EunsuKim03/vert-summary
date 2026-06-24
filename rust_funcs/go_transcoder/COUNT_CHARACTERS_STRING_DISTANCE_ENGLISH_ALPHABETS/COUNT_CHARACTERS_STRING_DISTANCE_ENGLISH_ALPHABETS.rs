fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(str: Vec<char>) -> i32 {
    let mut result: i32= 0;
    let n = str.len() as i32;
    for i in 0..n{
        for j in (i + 1)..n{
            if (str[i as usize] as i32 - str[j as usize] as i32).abs() == (i - j).abs(){
                result += 1; 
            }
        }
    }
   result 
}
