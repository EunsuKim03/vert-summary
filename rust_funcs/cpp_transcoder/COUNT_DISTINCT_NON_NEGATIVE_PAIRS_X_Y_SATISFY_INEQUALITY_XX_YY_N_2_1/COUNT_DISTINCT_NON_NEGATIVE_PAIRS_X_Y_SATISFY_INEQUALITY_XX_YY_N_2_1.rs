fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut x = 0;
    let mut y_count;
    let mut res = 0;
    y_count = (n as f32).sqrt() as i32;
    while y_count != 0 {
        res += y_count;
        x += 1;
        while y_count != 0 && (x * x + (y_count - 1) * (y_count - 1) >= n) {
            y_count -= 1;
        }
    }
    res
}
