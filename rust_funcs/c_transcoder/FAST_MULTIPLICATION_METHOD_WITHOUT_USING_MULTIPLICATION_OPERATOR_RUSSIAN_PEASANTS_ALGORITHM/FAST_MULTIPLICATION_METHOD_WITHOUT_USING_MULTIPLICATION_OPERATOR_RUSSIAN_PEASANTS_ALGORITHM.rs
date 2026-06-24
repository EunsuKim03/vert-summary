fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: u32, b: u32) -> u32 {
    let mut res = 0; 
    let mut a = a as usize;
    let mut b = b as usize;
    while b > 0 {
        if b & 1 == 1 {
            res = res + a; 
        }
        a = a << 1; 
        b = b >> 1;
    }
    res
}
