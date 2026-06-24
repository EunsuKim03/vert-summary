fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    if n < 3 {
        n
    } else if n >= 3 && n < 10 {
        n - 1
    } else {
        let mut po = 1;
        while n / po > 9 {
            po *= 10;
        }
        let msd = n / po;
        if msd != 3 {
            f_gold(msd) * f_gold(po - 1) + f_gold(msd) + f_gold(n % po)
        } else {
            f_gold((msd * po) - 1)
        }
    }
}
