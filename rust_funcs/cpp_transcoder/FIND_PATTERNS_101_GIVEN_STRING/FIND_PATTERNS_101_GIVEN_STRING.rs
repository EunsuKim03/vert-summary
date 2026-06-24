fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut str: String) -> i32 {
    let mut last = str.chars().next().unwrap();
    let mut i = 1;
    let mut counter = 0;
    while i < str.len() {
        if str.chars().nth(i).unwrap() == '0' && last == '1' {
            while str.chars().nth(i).unwrap() == '0' {
                i += 1;
            }
            if str.chars().nth(i).unwrap() == '1' {
                counter += 1;
            }
        }
        last = str.chars().nth(i).unwrap();
        i += 1;
    }
    counter
}
