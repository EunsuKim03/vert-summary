fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &[char], len: u32) -> i32 {
    let mut count = 1;
    if len == 1 {
        return count;
    }
    if str[0] == str[1] {
        count *= 1;
    } else {
        count *= 2;
    }
    for j in 1..len-1 {
        if str[j] == str[j-1] && str[j] == str[j+1] {
            count *= 1;
        } else if str[j] == str[j-1] || str[j] == str[j+1] || str[j-1] == str[j+1] {
            count *= 2;
        } else {
            count *= 3;
        }
    }
    if str[len-1] == str[len-2] {
        count *= 1;
    } else {
        count *= 2;
    }
    count
}
