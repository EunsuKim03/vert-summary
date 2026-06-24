fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(n: i32) -> f64 {
    let mut i = 1;
    let mut res = 0.0;
    let mut sign = 1;
    while n > 0 {
        n -= 1;
        if sign {
            sign = !sign;
            res += (i as f32) / (i as f32 + 1.0);
            i += 1;
        } else {
            sign = !sign;
            res -= (i as f32) / (i as f32 + 1.0);
            i += 1;
        }
    }
    res
}
