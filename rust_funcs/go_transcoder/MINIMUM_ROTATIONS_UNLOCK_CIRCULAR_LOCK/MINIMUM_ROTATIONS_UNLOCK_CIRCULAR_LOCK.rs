fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold (mut input: i32, mut unlock_code: i32) -> i32 {
    let mut rotation = 0;
    let mut input_digit; 
    let mut code_digit;

    while input != 0 || unlock_code != 0  {
        input_digit = input % 10;
        code_digit = unlock_code % 10;
        rotation += i32::min(i32::abs(input_digit - code_digit), 10 - i32::abs(input_digit - code_digit));
        input /= 10;
        unlock_code /= 10;
    }
    rotation
}
