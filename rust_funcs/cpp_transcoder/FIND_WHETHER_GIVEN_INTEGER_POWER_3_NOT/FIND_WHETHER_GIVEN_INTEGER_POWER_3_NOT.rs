fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32  {
    let mut a: f32 = 1162261467f32;
    let b: f32 = n as f32;
    let c: f32 = a % b;
    let d: i32 = c as i32;
    if d == 0  {
        return 1;
    } else {
       return 0; 
    }  
}
