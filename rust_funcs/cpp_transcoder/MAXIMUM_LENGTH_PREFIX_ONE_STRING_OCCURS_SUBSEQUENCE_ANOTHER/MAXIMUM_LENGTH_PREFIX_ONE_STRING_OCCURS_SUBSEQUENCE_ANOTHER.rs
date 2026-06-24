fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: &[u8], t: &[u8]) -> i32 {
    let mut count = 0;
    for i in 0..t.len() {
        if count == s.len() {
            break;
        }
        if t[i] == s[count] {
            count += 1;
        }
    }
    count
}
