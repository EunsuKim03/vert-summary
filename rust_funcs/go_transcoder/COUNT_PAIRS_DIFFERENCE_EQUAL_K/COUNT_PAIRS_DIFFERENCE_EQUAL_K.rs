fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut arr: [i32;2], n: i32, k: i32) -> i32 {
    let mut count: i32 = 0;
    for i in 0..n {
        for j in i + 1..n {
            if arr[i as usize] - arr[j as usize] == k || arr[j as usize] - arr[i as usize] == k {
                count += 1;
            }
        }
    }
    count
}
