fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 {
    let len = str.len() as i32;
    let mut open = vec![0; len as usize + 1];
    let mut close = vec![0; len as usize + 1];
    let mut index = -1;
    open[0] = 0;
    close[len as usize] = 0;
    if str.chars().nth(0).unwrap() == '(' {
        open[1] = 1;
    }
    if str.chars().nth(len as usize - 1).unwrap() == ')' {
        close[len as usize - 1] = 1;
    }
    for i in 1..len {
        if str.chars().nth(i as usize - 1).unwrap() == '(' {
            open[i as usize + 1] = open[i as usize] + 1;
        } else {
            open[i as usize + 1] = open[i as usize];
        }
    }
    for i in (0..len - 1).rev() {
        if str.chars().nth(i as usize).unwrap() == ')' {
            close[i as usize] = close[i as usize + 1] + 1;
        } else {
            close[i as usize] = close[i as usize + 1];
        }
    }
    if open[len as usize] == 0 {
        len
    } else if close[0] == 0 {
        0
    } else {
        for i in 0..=len {
            if open[i as usize] == close[i as usize] {
                index = i;
                break;
            }
        }
        index
    }
}
