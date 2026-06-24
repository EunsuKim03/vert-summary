fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(N: i32) -> i32 { 
    let mut base: f32 = 2.0;
    let mut result: f32 = 0.0;

    while base <= N as f32 + 1.0 {
        result += 1.0;
        base *= 2.0;
    }

    result as i32 - 1 
}
