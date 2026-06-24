fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 {
    let mut len = str.len();
    let mut one_seen = 0;
    let mut count = 0;
    for i in 0..len {
        if str.chars().nth(i).unwrap() == '1' && one_seen == 1 {
            if str.chars().nth(i - 1).unwrap() == '0' {
                count += 1;
            }
        }
        if str.chars().nth(i).unwrap() == '1' && one_seen == 0 {
            one_seen = 1;
            continue;
        }
        if str.chars().nth(i).unwrap() != '0' && str.chars().nth(i).unwrap() != '1' {
            one_seen = 0;
        }
    }
    count
}
