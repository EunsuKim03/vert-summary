fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: f32, b: f32) -> f32 {
    let mut mod_a;
    if a < 0.0 {
        mod_a = -a;
    } else {
        mod_a = a;
    }
    let mut b = b;
    if b < 0.0 {
        b = -b;
    }
    while mod_a >= b {
        mod_a -= b;
    }
    if a < 0.0 {
        -mod_a
    } else {
        mod_a
    }
}
