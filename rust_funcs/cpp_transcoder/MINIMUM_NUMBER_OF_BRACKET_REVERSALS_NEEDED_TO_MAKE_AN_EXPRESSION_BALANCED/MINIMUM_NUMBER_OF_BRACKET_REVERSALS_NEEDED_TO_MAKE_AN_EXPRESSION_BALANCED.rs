fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(expr: String) -> i32 {
    let mut stack = Vec::new();
    let len = expr.len();
    if len % 2 != 0 {
        return -1;
    }
    for i in 0..len {
        if expr[i] == '}' && !stack.is_empty() {
            if stack[stack.len() - 1] == '{' {
                stack.pop();
            } else {
                stack.push(expr[i]);
            }
        } else {
            stack.push(expr[i]);
        }
    }
    let red_len = stack.len();
    let mut n = 0;
    while !stack.is_empty() && stack[stack.len() - 1] == '{' {
        stack.pop();
        n += 1;
    }
    return red_len / 2 + n % 2; 
}
}
