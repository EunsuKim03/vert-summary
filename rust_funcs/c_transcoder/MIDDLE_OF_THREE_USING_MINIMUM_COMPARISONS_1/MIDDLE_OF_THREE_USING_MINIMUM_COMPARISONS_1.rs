fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: i32, b: i32, c: i32) -> i32 {
    if a > b {
        if b > c {return b}
        else if a > c {return c}
        else {return a}
    }
    else {
        if a > c {return a}
        else if b > c {return c}
        else {return b}
    }
}
