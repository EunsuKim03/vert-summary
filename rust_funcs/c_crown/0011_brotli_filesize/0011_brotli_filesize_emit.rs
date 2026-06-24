#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
use std::io::Seek;

use std::fs::File;
use std::io::SeekFrom;

#[no_mangle]
fn file_size(path: &str) -> i64 {
    let f = File::open(path).unwrap();
    let size = f.seek(SeekFrom::End(0)).unwrap(); 
    f.rewind().unwrap();
    size
}
fn main(){
}