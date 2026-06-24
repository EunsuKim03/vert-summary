fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: String) -> String {
    let n = s.len();
    let mut sub_count = (n * (n + 1)) / 2;
    let mut arr = Vec::with_capacity(sub_count as usize);
    let mut index = 0;
    for i in 0..n {
        for len in 1..=n - i {
            arr.push(s[i..i + len].to_string());
            index += 1;
        }
    }
    arr.sort();
    let mut res = String::new();
    for i in 0..sub_count {
        res.push_str(&arr[i]);
    }
    res
}
