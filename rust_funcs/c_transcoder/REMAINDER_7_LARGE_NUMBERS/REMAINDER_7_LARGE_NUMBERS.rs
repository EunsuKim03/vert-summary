fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(num: String) -> i32 {
    let series = [1, 3, 2, -1, -3, -2];
    let mut series_index = 0;
    let mut result = 0;
    for i in (0..num.len()).rev() {
        let digit = num.chars().nth(i).unwrap() as i32 - '0' as i32;
        result += digit * series[series_index];
        series_index = (series_index + 1) % 6;
        result %= 7;
    }
    if result < 0 { result = (result + 7) % 7 }
    result
}
