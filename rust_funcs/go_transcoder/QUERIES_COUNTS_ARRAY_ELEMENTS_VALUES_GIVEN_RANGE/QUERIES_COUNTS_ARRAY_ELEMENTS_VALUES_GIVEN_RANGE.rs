fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32, x: i32, y: i32) -> i32 {
    let mut count = 0;
    for i in 0..n {
        if arr[i as usize] >= x && arr[i as usize] <= y {
            count += 1;
        }
    }
    count
}
