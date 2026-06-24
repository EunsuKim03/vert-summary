fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(notes: &mut [i32], n: i32) -> i32 {
    let mut five_count = 0;
    let mut ten_count = 0;
    for i in 0..n {
        if notes[i as usize] == 5 {
            five_count += 1;
        } else if notes[i as usize] == 10 {
            if five_count > 0 {
                five_count -= 1;
                ten_count += 1;
            } else {
                return 0;
            }
        } else {
            if five_count > 0 && ten_count > 0 {
                five_count -= 1;
                ten_count -= 1;
            } else if five_count >= 3 {
                five_count -= 3;
            } else {
                return 0;
            }
        }
    }
    1
}
