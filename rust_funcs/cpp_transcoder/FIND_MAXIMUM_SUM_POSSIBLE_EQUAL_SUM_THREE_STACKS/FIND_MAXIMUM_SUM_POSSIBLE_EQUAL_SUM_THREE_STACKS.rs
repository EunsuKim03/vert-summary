fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(stack1: [f32;2], stack2: [f32;2], stack3: [f32;2], n1: u32, n2: u32, n3: u32) -> i32 {
    let mut sum1 = 0.;
    let mut sum2 = 0.;
    let mut sum3 = 0.;
    for i in 0..n1 {
        sum1 += stack1[i];
    }
    for i in 0..n2 {
        sum2 += stack2[i];
    }
    for i in 0..n3 {
        sum3 += stack3[i];
    }
    let mut top1 = 0;
    let mut top2 = 0;
    let mut top3 = 0;
    let mut ans = 0.;
    while top1 != n1 && top2 != n2 && top3 != n3 {
        if sum1 == sum2 && sum2 == sum3 {
            return sum1;
        }
        if sum1 >= sum2 && sum1 >= sum3 {
            sum1 -= stack1[top1];
            top1 += 1;
        } else if sum2 >= sum3 && sum2 >= sum1 {
            sum2 -= stack2[top2];
            top2 += 1;
        } else if sum3 >= sum2 && sum3 >= sum1 {
            sum3 -= stack3[top3];
            top3 += 1;
        }
    }
    0.
}
