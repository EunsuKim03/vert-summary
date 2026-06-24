fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    if n < 0 {
        return 0;
    }
    if n <= 1 {
        return 1;
    }   
    let mut x = ((n as f32 * f32::ln(n as f32 / std::f32::consts::E)) +  
                (f32::ln(2.0 * std::f32::consts::PI * (n as f32)) / 2.0)) as i32; 
    x  += 1;
    x
}
