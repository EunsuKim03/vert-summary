fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> String {
    let mut result = String::new();
    let mut v = 1;
    for i in 0..str.len() {
        if str.chars().nth(i).unwrap() == ' ' {
            v = 1;
        } else if str.chars().nth(i).unwrap() != ' ' && v == 1  {
            result.push(str.chars().nth(i).unwrap());
            v = 0;
        }
    }
    result
}
