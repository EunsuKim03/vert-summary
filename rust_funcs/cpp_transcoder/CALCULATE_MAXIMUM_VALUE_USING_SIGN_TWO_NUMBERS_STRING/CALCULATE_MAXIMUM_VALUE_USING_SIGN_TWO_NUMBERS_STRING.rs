fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 {
    let mut res = str.chars().nth(0).unwrap() as i32 - '0' as i32;
    for i in 1..str.len() {
        if str.chars().nth(i).unwrap() == '0'  || str.chars().nth(i).unwrap() == '1' || res < 2 {
            res += str.chars().nth(i).unwrap() as i32 - '0' as i32; 
        } else {
            res *= str.chars().nth(i).unwrap() as i32 - '0' as i32;
        }
    }
    res 
}
