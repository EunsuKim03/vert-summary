fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
    let mut set1 = (x >> p1) & ((1u32 << n) - 1);
    let mut set2 = (x >> p2) & ((1u32 << n) - 1);
    let mut xor = (set1 ^ set2);
    xor = (xor << p1) | (xor << p2);
    let result = x ^ xor;
    result 
}
