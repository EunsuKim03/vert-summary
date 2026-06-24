fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
    let mut count;
    for i in 0..n {
        count = 0;
        for j in 0..n {
            if arr[j as usize] == arr[i as usize] {
                count += 1;
            }
            if count > 2 * k {
                return 0;
            }
        }
    }
    1
}
