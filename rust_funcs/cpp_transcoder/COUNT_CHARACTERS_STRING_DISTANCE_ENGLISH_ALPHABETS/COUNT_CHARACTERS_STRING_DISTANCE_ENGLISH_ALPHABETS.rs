fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 {
    let mut result = 0;
    let n = str.len();
    for i in 0..n {
        for j in (i + 1)..n {
            if (str[i] as f32 - str[j] as f32).abs() == (i as f32 - j as f32).abs()  {
                result += 1;
            } 
        }
    }
    result
}
