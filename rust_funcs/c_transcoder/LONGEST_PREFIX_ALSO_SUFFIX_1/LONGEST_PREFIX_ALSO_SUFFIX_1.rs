fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s: String) -> i32 {
    let n = s.len() as i32;
    let mut lps = vec![0;n as usize];
    let mut len = 0; 
    let mut i = 1;
    while i < n  {
        if s.chars().nth(i as usize) == s.chars().nth(len as usize) {
            len += 1;
            lps[i as usize] = len; 
            i += 1;
        } else {
            if len != 0 {
                len = lps[(len - 1) as usize];
            } else {
                lps[i as usize] = 0;
                i += 1; 
            }
        }
    }
    let res = lps[(n - 1) as usize]; 
    if res > n / 2 {
        n / 2 
    } else {
        res
    }  
}
