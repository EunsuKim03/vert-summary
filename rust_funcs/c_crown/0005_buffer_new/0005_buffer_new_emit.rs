#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]

use std::mem;

pub struct Buffer {
    len: usize,
    data: Box<[u8]>, 
}

impl Buffer {
    fn new() -> Buffer {
        Buffer::with_size(1024)
    }

    fn with_size(size: usize) -> Buffer {
        let mut data = vec![0; size + 1];
        Buffer {
            len: size,
            data: data.into_boxed_slice(),
        }
    }
}
fn main(){
}