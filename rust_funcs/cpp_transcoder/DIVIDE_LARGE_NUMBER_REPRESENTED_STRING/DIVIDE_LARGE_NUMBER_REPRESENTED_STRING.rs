fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str::FromStr;

fn f_gold(number: String, divisor: i32) -> String { 
    let mut ans = String::new();
    let mut idx = 0;
    let mut temp = number[idx..].parse::<i32>().unwrap_or(0);
    while temp < divisor {
        temp = temp * 10 + number[idx + 1..].parse::<i32>().unwrap_or(0);
        idx += 1;
    }
    while number.len() > idx {
        ans.push_str(&(temp / divisor).to_string());
        temp = (temp % divisor) * 10 + number[idx + 1..].parse::<i32>().unwrap_or(0);
        idx += 1;
    }
    if ans.is_empty() { ans.push_str("0") }
    ans
}
