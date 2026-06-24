fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut arr: [f32;2], n: u32,  A: f32, B: f32, C: f32) {
    for i in 0..n {
        arr[i] = A * arr[i] * arr[i] + B * arr[i] + C;
    }
    let mut index = 0;
    let mut maximum = f32::MIN;
    for i in 0..n {
        if maximum < arr[i] {
            index = i;
            maximum = arr[i];
        }
    }
    let mut i = 0;
    let mut j = n - 1;
    let mut new_arr = vec![0.0; n];
    let mut k = 0;
    while i < index && j > index {
        if arr[i] < arr[j] {
            new_arr[k] = arr[i];
            i += 1;
            k += 1;
        } else {
            new_arr[k] = arr[j];
            j -= 1;
            k += 1;
        }
    }
    while i < index {
        new_arr[k] = arr[i];
        i += 1;
        k += 1;
    }
    while j > index {
        new_arr[k] = arr[j];
        j -= 1;
        k += 1;
    }
    new_arr[n - 1] = maximum;
    for i in 0..n {
        arr[i] = new_arr[i];
    } 
}
