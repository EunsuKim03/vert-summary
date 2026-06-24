fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut l = 0;
    let mut sum = 0;
    let mut ans = 360;
    for i in 0..n {
        sum += arr[i as usize];
        while sum >= 180 {
            ans = ans.min(2 * (180 - sum).abs());
            sum -= arr[l];
            l += 1;
        }
        ans = ans.min(2 * (180 - sum).abs());
    }
    ans
}
