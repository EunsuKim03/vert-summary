fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::i32;

fn f_gold(a: i32, b: i32) -> i32 {
    if a == b {
        return a;
    } 
    if a == 0 {
        return b; 
    }
    if b == 0 {
        return a;
    }
    if a & 1 == 0  {
        if b & 1 != 0 {
            return f_gold(a >> 1, b);
        } else {
            return f_gold(a >> 1, b >> 1) << 1;
        }
    }
    if b & 1 == 0 {
        return f_gold(a, b >> 1);
    }
    if a > b {
        return f_gold((a - b) >> 1, b);
    }
    return f_gold((b - a) >> 1, a);  
}
