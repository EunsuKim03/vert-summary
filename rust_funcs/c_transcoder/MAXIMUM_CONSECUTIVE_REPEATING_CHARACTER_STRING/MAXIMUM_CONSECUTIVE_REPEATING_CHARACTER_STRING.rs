fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(str_input: &str) -> char {
    let len = str_input.len();
    let mut count = 0;
    let mut res = str_input.chars().nth(0).unwrap();
    for i in 0..len {
        let mut cur_count = 1;
        for j in (i+1)..len {
            if str_input.chars().nth(i).unwrap() != str_input.chars().nth(j).unwrap() {
                break;
            }
            cur_count += 1;
        }
        if cur_count > count {
            count = cur_count;
            res = str_input.chars().nth(i).unwrap();
        }
    }
    res
}
