fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &Vec<char>, l: i32, h: i32) -> i32  {
    if l > h {
        return i32::MAX; 
    }
    if l == h {
        return 0;
    }
    if l == h - 1 {
        return if str[l as usize] == str[h as usize] {0} else {1}
    }
    return if str[l as usize] == str[h as usize] {
        f_gold(str, l + 1, h - 1)
    } else {
        min(f_gold(str, l, h - 1), f_gold(str, l + 1, h)) + 1
    }
}
