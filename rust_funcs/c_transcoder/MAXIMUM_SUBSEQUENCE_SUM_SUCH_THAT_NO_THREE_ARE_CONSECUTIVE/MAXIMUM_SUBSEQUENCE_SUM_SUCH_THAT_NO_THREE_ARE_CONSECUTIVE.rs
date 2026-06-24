fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut sum = vec![0; n as usize];
    if n >= 1 {sum[0] = arr[0];}
    if n >= 2 {sum[1] = arr[0] + arr[1];}
    if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
    for i in 3..n as usize {
        sum[i] = max(max(sum[i-1], sum[i-2] + arr[i as usize]), arr[i as usize] + arr[i as usize-1] + sum[i-3]);
    }
    sum[n as usize - 1]
}
