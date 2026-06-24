fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x: i32) -> i32 {
    let mut temp = x as f32;
    let mut n = 0;
    while temp != 0.0 {
        temp /= 10.0;
        n += 1;
    }
    let mut x = x as f32; 
    let mut sum = 0.0;
    while x != 0.0 {
        sum += (x % 10.0).powf(n as f32);
        x /= 10.0;
    }
    sum == temp
}
