fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: [f32;2], b: [f32;2], n: i32, k: i32) -> i32 {
    let mut diff = 0;
    let mut res = 0;
    let mut temp;
    for i in 0..n {
        let pro = a[i] * b[i]; 
        res += pro;
        if pro < 0.0 && b[i] < 0.0 { temp = (a[i] + 2.0 * k as f32) * b[i]; }
        else if pro < 0.0 && a[i] < 0.0 { temp = (a[i] - 2.0 * k as f32) * b[i]; }
        else if pro > 0.0 && a[i] < 0.0 { temp = (a[i] + 2.0 * k as f32) * b[i]; }
        else if pro > 0.0 && a[i] > 0.0 { temp = (a[i] - 2.0 * k as f32) * b[i]; }
        let d = (pro - temp).abs(); 
        if d > diff { diff = d; }
    }
    res - diff 
}
