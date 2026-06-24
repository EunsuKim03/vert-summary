fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32, x: i32, y: i32) -> i32 {
    let mut arr = Vec::with_capacity(n as usize + 1);
    arr.resize(n as usize + 1, 0);
    if x <= n {
        arr[x as usize] = 1;
    }
    if y <= n {
        arr[y as usize] = 1;
    }
    let mut result = 0;
    for i in std::cmp::min(x, y)..=n {
        if arr[i as usize] {
            if i + x <= n {
                arr[(i + x) as usize] = 1;
            }
            if i + y <= n {
                arr[(i + y) as usize] = 1;
            }
            result += 1;
        }
    }
    result
}
