fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> char {
    let mut n = str.len();
    let mut count = 0;
    let mut res = str.chars().nth(0).unwrap();
    let mut cur_count = 1; 
    for i in 0..n-1 {
        if str.chars().nth(i) == str.chars().nth(i + 1) {
            cur_count += 1;
        } else {
            if cur_count > count {
                count = cur_count;
                res = str.chars().nth(i).unwrap(); 
            }
            cur_count = 1;
        }
    }
    res
}
