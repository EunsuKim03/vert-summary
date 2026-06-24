fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: i32, b: i32) -> i32 {
    if a == 0 || b == 0 {
        return 1;
    }
    let a = a as f32;
    let b = b as f32;
    let a = a.abs();
    let b = b.abs();
    let log_a = a.log10();
    let log_b = b.log10();
    let sum = log_a + log_b;
    let ans = sum.floor() as i32 + 1;
    ans
}
