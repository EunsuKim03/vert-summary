fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &str) -> char {
    let mut count = 0;
    let mut res = str.chars().nth(0).unwrap();
    let mut cur_count = 1;
    for (i, c) in str.chars().enumerate() {
        if i < str.len() - 1 && c == str.chars().nth(i + 1).unwrap() {
            cur_count += 1;
        } else {
            if cur_count > count {
                count = cur_count;
                res = c;
            }
            cur_count = 1;
        }
    }
    res
}
