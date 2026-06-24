fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    if n == 1 {
        return 4;
    }
    let mut count_b = 1;
    let mut count_s = 1;
    let mut prev_count_b;
    let mut prev_count_s;
    for i in 2..=n {
        prev_count_b = count_b;
        prev_count_s = count_s;
        count_s = prev_count_b + prev_count_s;
        count_b = prev_count_s;
    }
    let result = count_s + count_b;
    return result * result; 
}
