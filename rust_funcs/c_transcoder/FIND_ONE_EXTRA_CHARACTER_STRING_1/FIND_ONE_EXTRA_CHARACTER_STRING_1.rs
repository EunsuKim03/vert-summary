fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(strA: &str, strB: &str) -> char  {
let mut res: u32 = 0;
for b in strA.chars() {
    res ^= b as u32
} 
for b in strB.chars() {   
    res ^= b as u32
}
((res as u8) as char)
}
