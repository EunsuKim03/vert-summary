fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut res = 0;
    let mut x: f32 = 0.0;
    while x * x < n as f32 {
        let mut y: f32 = 0.0; 
        while x * x + y * y < n as f32 {
            res += 1;
            y += 1.0;
        }
        x += 1.0;
    }
    res
}
