fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut a: Vec<i32> = Vec::with_capacity(n as usize);
    let mut b: Vec<i32> = Vec::with_capacity(n as usize);
    a.push(1);
    b.push(1);
    for i in 1..n {
        a.push(a[i as usize - 1] + b[i as usize - 1]);
        b.push(a[i as usize - 1]);
    }
    (1 << n) - a[n as usize - 1] - b[n as usize - 1]
}
