fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut str: String) -> String {
    let mut i = str.len() - 1;
    let mut start;
    let mut end = i + 1;
    let mut result = String::new();
    while i >= 0 {
        if str.chars().nth(i).unwrap() == ' ' {
            start = i + 1;
            while start != end {
                result.push(str.chars().nth(start).unwrap());
                start += 1;
            }
            result.push(' ');
            end = i;
        }
        i -= 1;
    }
    start = 0;
    while start != end {
        result.push(str.chars().nth(start).unwrap());
        start += 1;
    }
    result
}
