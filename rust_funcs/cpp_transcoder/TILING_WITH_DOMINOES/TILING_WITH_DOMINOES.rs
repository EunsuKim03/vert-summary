fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut a = vec![1, 0]; 
    let mut b = vec![0, 1];
    for i in 2..=n {
        a.push(a[i - 2] + 2 * b[i - 1]);
        b.push(a[i - 1] + b[i - 2]);
    }
    a[n]
}
