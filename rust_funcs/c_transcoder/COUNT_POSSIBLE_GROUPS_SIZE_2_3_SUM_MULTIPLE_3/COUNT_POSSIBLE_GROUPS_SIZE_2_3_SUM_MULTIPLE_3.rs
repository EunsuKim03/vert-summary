fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut c = [0i32, 0i32, 0i32];
    let mut res: i32 = 0;
    for i in 0..n {
        c[arr[i as usize] as usize % 3] += 1;
    }
    res += (c[0] * (c[0] - 1)) / 2;
    res += c[1] * c[2];
    res += (c[0] * (c[0] - 1) * (c[0] - 2)) / 6;
    res += (c[1] * (c[1] - 1) * (c[1] - 2)) / 6;
    res += (c[2] * (c[2] - 1) * (c[2] - 2)) / 6;
    res += c[0] * c[1] * c[2];
    res 
}
