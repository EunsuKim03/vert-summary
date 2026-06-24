fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(r: i32) -> i32 {
    if r <= 0 {
        return 0;
    }
    let mut result = 4;
    for x in 1..r {
        let y_square = (r as f32) * (r as f32) - (x as f32) * (x as f32);
        let y = (y_square as f32).sqrt();
        if (y as i32) * (y as i32) == y_square as i32 {
            result += 4;
        }
    }
    result
}
