fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
    let mut count = 0f32; 
    for i in 0..n as usize {
        for j in (i + 1)..n as usize {
            if arr[i] - arr[j] == k || arr[j] - arr[i] == k {
                count += 1f32;
            }
        }
    }
    count
}
