fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

 fn f_gold(s: String) -> i32 {
    let mut result = 0; 
    let n = s.len();
    for i in 0..n {
        for j in i..n {
            if s[i..i+1] == s[j..j+1] {
                result += 1;
            }
        }
    }
    result
}
