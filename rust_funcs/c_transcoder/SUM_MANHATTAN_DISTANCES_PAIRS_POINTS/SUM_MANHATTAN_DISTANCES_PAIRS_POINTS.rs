fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x: [i32;2], y: [i32;2], n: i32) -> i32 {
    let mut sum = 0;
    for i in 0..n {
        for j in (i + 1)..n  {
            sum += (x[i as usize] - x[j as usize]).abs() + (y[i as usize] - y[j as usize]).abs(); 
        }
    }
    sum
}
