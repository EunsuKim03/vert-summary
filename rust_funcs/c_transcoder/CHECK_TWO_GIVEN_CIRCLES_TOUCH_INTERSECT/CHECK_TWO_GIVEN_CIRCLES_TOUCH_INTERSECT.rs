fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32, r1: i32, r2: i32) -> i32 {
    let x1 = x1 as f32;
    let y1 = y1 as f32;
    let x2 = x2 as f32;
    let y2 = y2 as f32;
    let r1 = r1 as f32;
    let r2 = r2 as f32;
    let dist_sq = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2);
    let rad_sum_sq = (r1 + r2) * (r1 + r2);
    if dist_sq == rad_sum_sq {1} 
    else if dist_sq > rad_sum_sq {-1}
    else {0}
}
