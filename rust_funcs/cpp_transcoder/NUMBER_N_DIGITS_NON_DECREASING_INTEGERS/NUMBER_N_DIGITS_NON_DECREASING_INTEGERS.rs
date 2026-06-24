fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut a = vec![vec![0; 10]; n as usize + 1];
    for i in 0..10 {
        a[0][i] = 1;
    }
    for i in 1..=n {
        a[i as usize][9] = 1;
    }
    for i in 1..=n {
        for j in (0..9).rev() {
            a[i as usize][j] = a[(i - 1) as usize][j] + a[i as usize][j + 1];
        }
    }
    a[n as usize][0]
}
