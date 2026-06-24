fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &[f32;2], n: u32) -> i32 {
    let mut c = [0f32; 3];
    let mut res = 0f32;
    for i in 0..n {
        c[arr[i] as usize % 3] += 1f32;
    }
    res += (c[0] * (c[0] - 1f32)) / 2f32;
    res += c[1] * c[2];
    res += (c[0] * (c[0] - 1f32) * (c[0] - 2f32)) / 6f32;
    res += (c[1] * (c[1] - 1f32) * (c[1] - 2f32)) / 6f32;
    res += (c[2] * (c[2] - 1f32) * (c[2] - 2f32)) / 6f32;
    res += c[0] * c[1] * c[2];
    res 
}
