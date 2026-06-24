#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]

use std::collections::HashMap;

pub struct HashTable {
    entries: HashMap<String, usize>
}

impl HashTable {
    fn new() -> HashTable {
        HashTable {
            entries: HashMap::new() 
        }
    }

    fn insert(&mut self, key: &str, value: usize) {
        self.entries.insert(key.to_string(), value);
    }

    fn get(&self, key: &str) -> Option<usize> {
        self.entries.get(key).cloned()
    }

    fn len(&self) -> usize {
        self.entries.len()
    }
}
fn main(){
}