fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut s: String) -> String {
    if s == "" {
        return String::from("a");
    }
    let mut i = s.len() - 1;
    while s[i] == 'z' && i >= 0 {
        i -= 1;
    }
    if i == -1 {
        s.push('a');
    } else {
        s[i] += 1;
    }
    s
}
