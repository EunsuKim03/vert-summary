fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(mut n: i32) -> i32 {
    let l = (n as f32).sqrt() as i32;
    let sq = l * l;
    if sq == n {
        return l * 4;
    } else {
        let row = n / l;
        let mut perimeter = 2 * (l + row);
        if n % l != 0 {
            perimeter += 2;
        }
        perimeter
    }
}
