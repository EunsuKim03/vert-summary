fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
    let set1 = (x >> p1) & ((1 << n) - 1);
    let set2 = (x >> p2) & ((1 << n) - 1);
    let xor = set1 ^ set2;
    let xor = (xor << p1) | (xor << p2);
    let result = x ^ xor;
    result
}
