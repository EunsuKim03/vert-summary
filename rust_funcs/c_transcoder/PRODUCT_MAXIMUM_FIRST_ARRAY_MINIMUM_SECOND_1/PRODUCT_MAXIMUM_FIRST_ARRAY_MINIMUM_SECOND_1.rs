fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr1: [i32;2], arr2: [i32;2], n1: i32, n2: i32) -> i32 {
    let mut max = arr1[0];
    let mut min = arr2[0];
    let mut i: f32 = 1.0;
    while i < n1 as f32 && i < n2 as f32 {
        if arr1[(i as usize)] > max {
            max = arr1[(i as usize)];
        } 
        if arr2[(i as usize)] < min {
            min = arr2[(i as usize)];
        }
        i += 1.0;
    }
    while i < n1 as f32 {
        if arr1[(i as usize)] > max {
            max = arr1[(i as usize)];
        }
        i += 1.0;
    }
    while i < n2 as f32 {
        if arr2[(i as usize)] < min {
            min = arr2[(i as usize)];
        }
        i += 1.0;
    }
    max * min 
}
