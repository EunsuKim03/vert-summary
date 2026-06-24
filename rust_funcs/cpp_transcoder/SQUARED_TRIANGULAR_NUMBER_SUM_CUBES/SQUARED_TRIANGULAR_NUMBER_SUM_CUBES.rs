fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: i32) -> i32 {
    let mut sum = 0;
    let mut n = 1;
    while sum < s {
        sum += n * n * n;
        if sum == s {
            return n;
        }
        n += 1;
    }
    -1
}
