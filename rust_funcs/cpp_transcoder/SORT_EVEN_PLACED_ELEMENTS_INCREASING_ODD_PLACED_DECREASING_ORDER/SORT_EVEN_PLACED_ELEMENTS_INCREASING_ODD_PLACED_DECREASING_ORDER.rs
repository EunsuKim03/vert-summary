fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(arr: &mut [i32], n: i32) {
    let mut even_arr = vec![];
    let mut odd_arr = vec![];
    for i in 0..n {
        if i % 2 == 0 {
            even_arr.push(arr[i as usize]);
        } else {
            odd_arr.push(arr[i as usize]);
        }
    }
    even_arr.sort();
    odd_arr.sort_by(|a, b| b.cmp(a));
    let mut i = 0;
    for j in 0..even_arr.len() {
        arr[i] = even_arr[j];
        i += 1;
    }
    for j in 0..odd_arr.len() {
        arr[i] = odd_arr[j];
        i += 1;
    } 
}
