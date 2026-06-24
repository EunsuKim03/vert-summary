fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(low: i32, high: i32) -> i32 {
    let mut f1 = 0f32; 
    let mut f2 = 1f32;
    let mut f3 = 1f32;
    let mut result = 0;
    while f1 <= high as f32 {
        if f1 >= low as f32 {
            result += 1;
        }
        f1 = f2;
        f2 = f3;
        f3 = f1 + f2;
    }
    result 
}
