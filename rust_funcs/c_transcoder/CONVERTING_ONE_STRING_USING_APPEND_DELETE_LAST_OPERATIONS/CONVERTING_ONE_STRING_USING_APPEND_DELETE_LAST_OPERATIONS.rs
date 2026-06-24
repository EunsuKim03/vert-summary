fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str1: &str, str2: &str, k: i32) -> i32 {
    let str1_len = str1.len() as i32;
    let str2_len = str2.len() as i32;
    if str1_len + str2_len < k {
        return 1;
    }
    let mut common_length = 0;
   for  i in 0..min(str1_len, str2_len) as usize {
        if str1.chars().nth(i) == str2.chars().nth(i) {
            common_length += 1;
        } else {
            break; 
        }
    }
    if (k - str1_len - str2_len + 2 * common_length as i32) % 2 == 0 {
        return 1;
    } 
    0
}
