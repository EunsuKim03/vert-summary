fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: i32, b: i32) -> f32 {
    let am = (a as f32 + b as f32) / 2.0;
    let gm = (a as f32 * b as f32).sqrt();
    let hm = gm * gm / am; 
    hm
}
