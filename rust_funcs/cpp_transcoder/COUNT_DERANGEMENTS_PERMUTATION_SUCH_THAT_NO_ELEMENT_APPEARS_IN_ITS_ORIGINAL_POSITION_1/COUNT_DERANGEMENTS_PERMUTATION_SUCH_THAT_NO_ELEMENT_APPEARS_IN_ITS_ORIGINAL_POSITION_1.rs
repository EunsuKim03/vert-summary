fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut der = vec![0; n as usize + 1];
    der[0] = 1;
    der[1] = 0;
    der[2] = 1;
    for i in 3..=n {
        der[i as usize] = (i - 1) * (der[(i - 1) as usize] + der[(i - 2) as usize]);
    }
    der[n as usize] 
}
