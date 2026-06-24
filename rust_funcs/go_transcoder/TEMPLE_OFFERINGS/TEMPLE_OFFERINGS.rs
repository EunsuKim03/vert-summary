fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold(n: i32, mut templeHeight: &mut [i32]) -> i32 {
    let mut sum = 0;
    for i in 0..n {
        let mut left = 0;
        let mut right = 0;
        for j in (0..i).rev() {
            if temple_height[j] < temple_height[j + 1] {
                left += 1;
            } else {
                break;
            }
        }
        for j in i + 1..n {
            if temple_height[j] < temple_height[j - 1] {
                right += 1;
            } else {
                break;
            }
        }
        sum += left.max(right) + 1;
    }
    sum
}
