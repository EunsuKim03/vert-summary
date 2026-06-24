fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32, r: i32, p: i32) -> i32 {
    let mut C = vec![0; r as usize + 1];
    C[0] = 1;
    for i in 1..=n {
        for j in (1..=min(i, r)).rev() {
            C[j as usize] = (C[j as usize] + C[(j - 1) as usize]) % p; 
        }
    }
    C[r as usize]
}
