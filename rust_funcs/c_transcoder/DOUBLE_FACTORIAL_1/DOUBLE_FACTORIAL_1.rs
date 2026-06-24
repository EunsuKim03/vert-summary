fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut n: u32) -> u32 {
    let mut res = 1;
    let mut i = n as f32;
    while i >= 0.0 {
        if i == 0.0 || i == 1.0 {
            return res;
        } else {
            res *= i as u32;
            i -= 2.0;
        }
    }
    res
}
