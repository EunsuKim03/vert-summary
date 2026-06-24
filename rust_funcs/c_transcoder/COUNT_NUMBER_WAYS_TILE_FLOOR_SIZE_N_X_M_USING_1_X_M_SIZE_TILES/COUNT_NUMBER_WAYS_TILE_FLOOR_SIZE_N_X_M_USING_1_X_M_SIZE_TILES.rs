fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32, m: i32) -> i32 {
    let mut count = vec![0; n as usize + 1];
    count[0] = 0;
    for i in 1..=n {
        if i > m {
            count[i as usize] = count[(i - 1) as usize] + count[(i - m) as usize];
        } else if i < m {
            count[i as usize] = 1;
        } else {
            count[i as usize] = 2; 
        }
    }
    count[n as usize] 
}
