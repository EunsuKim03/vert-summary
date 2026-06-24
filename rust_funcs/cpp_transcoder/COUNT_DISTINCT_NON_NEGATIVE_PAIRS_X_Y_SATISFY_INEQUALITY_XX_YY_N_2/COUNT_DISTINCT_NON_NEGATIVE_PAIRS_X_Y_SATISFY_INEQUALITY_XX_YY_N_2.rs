fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut res = 0;
    for  x in 0..n  {
        for y in 0..n  {
            if (x as f32) * (x as f32) + (y as f32) * (y as f32) < n as f32  {
                res += 1;
            }
        }
    }
    res
}
