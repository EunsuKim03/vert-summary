fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut p_prev_prev = 1;
    let mut p_prev = 1;
    let mut p_curr = 1;
    let mut p_next = 1;
    for i in 3..=n {
        p_next = p_prev_prev + p_prev;
        p_prev_prev = p_prev;
        p_prev = p_curr;
        p_curr = p_next;
    }
    p_next
}
