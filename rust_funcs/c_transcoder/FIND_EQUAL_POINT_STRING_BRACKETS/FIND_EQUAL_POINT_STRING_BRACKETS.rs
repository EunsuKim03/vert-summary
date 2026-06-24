fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: &Vec<char>) -> i32 {
    let mut open = vec![0;str.len()+1];
    let mut close = vec![0;str.len()+1];
    let mut index = -1;
    open[0] = 0;
    close[str.len()] = 0;
    if str[0] == '(' {open[1] = 1;}
    if str[str.len()-1] == ')' {close[str.len()-1] = 1;}
    for i in 1..str.len() {
        if str[i] == '(' {open[i+1] = open[i] + 1;}
        else {open[i+1] = open[i];}
    }
    for i in (0..str.len()-1).rev() {
        if str[i] == ')' {close[i] = close[i+1] + 1;}
        else {close[i] = close[i+1];} 
    }
    if open[str.len()] == 0 {return str.len() as i32;}
    if close[0] == 0 {return 0;}
    for i in 0..=str.len() {
        if open[i] == close[i] {index = i as i32; break;}
    }
    index
}
