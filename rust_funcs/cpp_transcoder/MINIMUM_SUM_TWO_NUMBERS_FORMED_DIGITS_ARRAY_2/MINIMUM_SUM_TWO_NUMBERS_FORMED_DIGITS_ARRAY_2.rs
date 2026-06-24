fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: &mut [i32], n: i32) -> i32 {
    a.sort_by(|a, b| a.cmp(b));
    let mut num1 = 0;
    let mut num2 = 0;
    for i in 0..n {
        if i % 2 == 0 {
            num1 = num1 * 10 + a[i as usize];
        } else {
            num2 = num2 * 10 + a[i as usize];
        }
    }
    num2 + num1
}
