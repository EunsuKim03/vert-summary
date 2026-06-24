fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(ar: [i32;2], n: i32) -> i32 {
    if n <= 4 {
        return *ar.iter().min().unwrap();
    }
    let mut sum = vec![0; n as usize];
    sum[0] = ar[0];
    sum[1] = ar[1];
    sum[2] = ar[2];
    sum[3] = ar[3];
    for i in 4..n as usize {
        sum[i] = ar[i] + sum[i-4..i].iter().min().unwrap();
    }
    return *sum[n as usize - 4..].iter().min().unwrap(); 
}
