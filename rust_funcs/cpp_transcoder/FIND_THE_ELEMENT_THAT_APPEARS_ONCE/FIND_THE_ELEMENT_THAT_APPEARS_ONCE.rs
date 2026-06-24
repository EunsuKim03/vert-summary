fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {  
    let mut ones = 0;  
    let mut twos = 0; 
    
    for i in 0..n {
        twos = twos | (ones & arr[i as usize]);
        ones = ones ^ arr[i as usize];
        let common_bit_mask = !(ones & twos);
        ones &= common_bit_mask;
        twos &= common_bit_mask;
    }
    ones  
}
