fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(mut a: &mut [i32], n: i32) -> i32 {
    a.sort_by(|a, b| b.cmp(a));
    let mut sum = 0;
    let mut flag = 0;
    let mut len;
    for i in 0..n {
        if (a[i] == a[i + 1] || a[i] - a[i + 1] == 1) && !flag {
            flag = 1;
            len = a[i + 1];
            i += 1;
        } else if (a[i] == a[i + 1] || a[i] - a[i + 1] == 1) && flag {
            sum += a[i + 1] * len;
            flag = 0;
            i += 1;
        }
    }
    sum
}
