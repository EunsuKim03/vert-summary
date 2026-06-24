fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], N: f32) -> i32 {
    let mut lis = vec![0.; N as usize];
    for i in 0..N as usize {
        lis[i] = 1.; 
    }
    for i in 1..N as usize {
        for j in 0..i {
            if arr[i] >= arr[j] && lis[i] < lis[j] + 1. {
                lis[i] = lis[j] + 1.;
            }
        }
    }
    let mut max = 0.;
    for i in 0..N as usize {
        if max < lis[i] {
            max = lis[i];
        }
    }
    (N - max) 
}
