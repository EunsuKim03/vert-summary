fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &mut [char], n: i32) -> i32 {
    let mut ans: f32 = n as f32 * (n as f32 + 1.0) / 2.0;
    let mut a_index: i32 = 0;
    let mut b_index: i32 = 0;
    let mut c_index: i32 = 0;
    for i in 0..n {
        if str[i as usize] == 'a' {
            a_index = i + 1;
            ans -= f32::min(b_index as f32, c_index as f32);
        } else if str[i as usize] == 'b' {
            b_index = i + 1;
            ans -= f32::min(a_index as f32, c_index as f32);
        } else {
            c_index = i + 1;
            ans -= f32::min(a_index as f32, b_index as f32);
        }
    }
    ans as i32
}
