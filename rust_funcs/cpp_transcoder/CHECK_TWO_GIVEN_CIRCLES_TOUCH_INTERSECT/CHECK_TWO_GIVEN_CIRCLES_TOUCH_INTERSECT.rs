fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x1: f32, y1: f32, x2: f32, y2: f32, r1: f32, r2: f32) -> i32 {
    let dist_sq = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2);
    let rad_sum_sq = (r1 + r2) * (r1 + r2);
    if dist_sq == rad_sum_sq {1}
    else if dist_sq > rad_sum_sq {-1}
    else {0} 
}
