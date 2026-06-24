fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(strA: String, strB: String) -> char {
    let mut res: i32 = 0;
    for i in 0..strA.len() {
        res ^= strA.as_bytes()[i] as i32;
    }
    for i in 0..strB.len() {
        res ^= strB.as_bytes()[i] as i32;
    }
    (res as u8) as char
}
