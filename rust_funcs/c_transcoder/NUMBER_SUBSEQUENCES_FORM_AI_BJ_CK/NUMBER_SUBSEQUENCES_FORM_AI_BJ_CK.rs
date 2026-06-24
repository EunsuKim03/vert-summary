fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: &str) -> i32 {
    let mut a_count = 0;
    let mut b_count = 0;
    let mut c_count = 0;
    for c in s.chars() {
        match c {
            'a' => a_count = 1 + 2 * a_count,
            'b' => b_count = a_count + 2 * b_count,
            'c' => c_count = b_count + 2 * c_count,
            _ => ()
        }
    }
    c_count 
}
