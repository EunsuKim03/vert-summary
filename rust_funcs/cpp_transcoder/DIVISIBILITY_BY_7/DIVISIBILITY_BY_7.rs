fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut num: i32) -> i32 {
    if num < 0 {
        return f_gold(-num);
    }
    if num == 0 || num == 7 {
        return 1;
    }
    if num < 10 {
        return 0;
    }
    return f_gold(num / 10 - 2 * (num - num / 10 * 10)); 
}
