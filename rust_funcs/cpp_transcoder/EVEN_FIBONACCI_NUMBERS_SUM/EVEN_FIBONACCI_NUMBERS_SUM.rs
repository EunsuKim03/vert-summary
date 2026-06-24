fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(limit: i32) -> i32 {
    if limit < 2 {
        return 0;
    }
    let mut ef1 = 0f32; 
    let mut ef2 = 2f32;
    let mut sum = ef1 + ef2;
    while ef2 <= limit as f32{
        let ef3 = 4f32 * ef2 + ef1;
        if ef3 > limit as f32 {
            break;
        }
        ef1 = ef2;
        ef2 = ef3;
        sum += ef2;
    }
    return sum as i32; 
}
