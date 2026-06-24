fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: &mut [f32], n: u32) -> i32 {
    if n == 1 {return a[0];}
    let mut max_neg = f32::MIN;
    let mut min_pos = f32::MAX;
    let mut count_neg = 0;
    let mut count_zero = 0;
    let mut prod = 1.;
    for i in 0..n {
        if a[i] == 0.0 {
            count_zero += 1;
            continue;
        }
        if a[i] < 0.0 {
            count_neg += 1;
            max_neg = max_neg.max(a[i]);
        }
        if a[i] > 0.0 {min_pos = min_pos.min(a[i]);}
        prod *= a[i];
    }
    if count_zero == n || (count_neg == 0 && count_zero > 0) {return 0.;}
    if count_neg == 0 {return min_pos;}
    if count_neg % 2 == 0 && count_neg != 0 {
        prod /= max_neg;
    }
    prod
}
