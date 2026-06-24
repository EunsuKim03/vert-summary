fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(p: i32) -> i32 {
    let check_number = 2f32.powi(p as i32) - 1.0;
    let mut nextval = 4i32 % check_number as i32;
    for i in 1..p - 1 {
        nextval = (nextval * nextval - 2) % check_number as i32;
    }
    if nextval == 0 {1} else {0} 
}
