fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(side: f32) -> f32 {
    let two: f32 = 2.0;
    let root_two: f32 = 2.0f32.sqrt();
    let one: f32 = 1.0;
    let area: f32 = two * (one + root_two) * side * side;
    area as f32
}
