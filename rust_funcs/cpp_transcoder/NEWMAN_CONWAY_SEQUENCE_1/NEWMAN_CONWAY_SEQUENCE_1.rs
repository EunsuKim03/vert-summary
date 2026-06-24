fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut f = vec![0; n as usize + 1];
    f[0] = 0;
    f[1] = 1;
    f[2] = 1;
    for i in 3..=n  {
        f[i as usize] = f[(f[i as usize - 1] - 1) as usize] + f[(i - f[i as usize - 1]) as usize];
    }
    f[n as usize]
}
