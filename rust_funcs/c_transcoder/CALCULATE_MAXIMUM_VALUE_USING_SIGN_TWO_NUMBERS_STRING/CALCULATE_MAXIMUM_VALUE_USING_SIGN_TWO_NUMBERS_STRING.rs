fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &[char]) -> i32 {
    let mut res = str[0] as i32 - '0' as i32;
    for c in str.iter().skip(1) {
        if *c == '0' || *c == '1' || res < 2 {
            res += *c as i32 - '0' as i32;
        } else {
            res *= *c as i32 - '0' as i32;
        }
    }
    res
}
