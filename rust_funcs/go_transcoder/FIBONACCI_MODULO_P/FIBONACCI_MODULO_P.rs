fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(p: i32) -> i32 {
    let mut first = 1;
    let mut second = 1;
    let mut number = 2;
    let mut next = 1;
    while next != 0 {
        next = (first + second) % p;
        first = second;
        second = next;
        number+=1;
    }
    number 
}
