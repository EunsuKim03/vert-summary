fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> String {
    let mut n = str.len();
    let mut arr = Vec::with_capacity(n);
    let concat = str.clone() + &str;

    for i in 0..n {
        arr.push(concat[i..i + n].to_string());
    }

    arr.sort_by(|a, b| a.cmp(b));
    arr[0].clone() 
}
