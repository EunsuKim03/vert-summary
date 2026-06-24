use std::cmp::Ordering;

fn min(x: i32, y: i32) -> i32 {
    if x < y { x } else { y } 
}

fn max(x: i32, y: i32) -> i32 {
    if x > y { x } else { y }
}

fn cmpfunc(a: &i32, b: &i32) -> Ordering {
    a.cmp(b)
}

fn len(arr: &[i32]) -> usize {
    arr.len()
}

fn sort(arr: &mut [i32]) {
    arr.sort_by(cmpfunc);
}

fn f_gold(n: i32) -> i32 {
    (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0 
}
