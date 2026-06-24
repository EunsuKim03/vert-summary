fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: u32) -> isize {
    let mut res = 1;
    for i in 0..n {
        res *= (2 * n - i) as isize;
        res /= (i + 1) as isize;
    }
    res / (n + 1) as isize
}
