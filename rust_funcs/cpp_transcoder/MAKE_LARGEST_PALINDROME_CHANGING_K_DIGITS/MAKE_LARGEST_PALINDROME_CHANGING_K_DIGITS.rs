fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut str: String, k: i32) -> String {
    let mut palin = str.clone();
    let mut l = 0;
    let mut r = str.len() - 1;
    while l < r {
        if str[l] != str[r] {
            palin[l] = palin[r] = std::cmp::max(str[l], str[r]);
            k -= 1;
        }
        l += 1;
        r -= 1;
    }
    if k < 0 {
        return String::from("Not possible");
    }
    l = 0;
    r = str.len() - 1;
    while l <= r {
        if l == r {
            if k > 0 {
                palin[l] = '9';
            }
        }
        if palin[l] < '9' {
            if k >= 2 && palin[l] == str[l] && palin[r] == str[r] {
                k -= 2;
                palin[l] = palin[r] = '9';
            } else if k >= 1 && (palin[l] != str[l] || palin[r] != str[r]) {
                k -= 1;
                palin[l] = palin[r] = '9';
            }
        }
        l += 1;
        r -= 1;
    }
    palin
}
