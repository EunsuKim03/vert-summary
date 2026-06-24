fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String, corner: String) -> i32 {
    let n = str.len();
    let cl = corner.len();
    if n < cl {
        return 0;
    }
    return (str[0..cl].to_string().cmp(&corner) == std::cmp::Ordering::Equal && 
             str[(n - cl)..n].to_string().cmp(&corner) == std::cmp::Ordering::Equal) as i32;
}
