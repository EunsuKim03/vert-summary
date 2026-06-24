#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
#[no_mangle]
fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
#[no_mangle]
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
#[no_mangle]
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
#[no_mangle]
fn len(arr: &[i32]) -> usize {arr.len()}
#[no_mangle]
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


#[no_mangle]
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
