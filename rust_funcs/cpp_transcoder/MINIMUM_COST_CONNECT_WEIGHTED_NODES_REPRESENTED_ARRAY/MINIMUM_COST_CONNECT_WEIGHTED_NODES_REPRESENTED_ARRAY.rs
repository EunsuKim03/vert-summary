fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [f32;2], n: i32) -> i32 {
    let mut mn = f32::MAX; 
    let mut sum = 0.0;
    for i in 0..n {
        mn = a[i as usize].min(mn);
        sum += a[i as usize];
    }
    mn * (sum - mn)
}
