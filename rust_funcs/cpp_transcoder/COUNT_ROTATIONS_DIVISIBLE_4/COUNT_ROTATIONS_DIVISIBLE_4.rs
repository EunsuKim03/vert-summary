fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: String) -> i32 {
    let mut len = n.len();
    if len == 1 {
        let one_digit = n.chars().nth(0).unwrap() as i32 - '0' as i32;
        if one_digit % 4 == 0 {
            return 1;
        }
        return 0; 
    }
    let mut two_digit; 
    let mut count = 0;
    for i in 0..(len - 1)  {
        two_digit = (n.chars().nth(i).unwrap() as i32 - '0' as i32) * 10 + (n.chars().nth(i + 1).unwrap() as i32 - '0' as i32);
        if two_digit % 4 == 0 {
            count += 1;
        }
    }
    two_digit = (n.chars().nth(len - 1).unwrap() as i32 - '0' as i32) * 10 + (n.chars().nth(0).unwrap() as i32 - '0' as i32);
    if two_digit % 4 == 0 {
        count += 1;
    }
    count
}
