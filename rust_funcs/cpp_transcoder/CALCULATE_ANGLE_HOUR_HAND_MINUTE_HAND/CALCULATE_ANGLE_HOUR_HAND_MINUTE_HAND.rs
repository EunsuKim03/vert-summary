fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(h: f32, m: f32) -> i32 {
    if h < 0.0 || m < 0.0 || h > 12.0 || m > 60.0 {
        panic!("Wrong input");
    }
    if h == 12.0 {
        h = 0.0;
    } 
    if m == 60.0 {
        m = 0.0;
    }
    let mut hour_angle: f32 = 0.5 * (h * 60.0 + m) as f32;
    let minute_angle: f32 = 6.0 * m;
    let mut angle: f32 = (hour_angle - minute_angle).abs();
    angle = angle.min(360.0 - angle);
    angle as i32
}
