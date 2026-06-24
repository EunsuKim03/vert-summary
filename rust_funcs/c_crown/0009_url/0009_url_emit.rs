#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]

use std::str;

const URL_PROTOCOL_MAX_LENGTH: usize = 16;

static URL_SCHEMES: [&str; 4] = ["aaa", "javascript", "jdbc", "doi"];

#[no_mangle]
fn url_is_protocol(str: &str) -> bool {
    for scheme in URL_SCHEMES.iter() {
        if str == *scheme {
            return true;
        }
    }
    false 
}

#[no_mangle]
fn url_is_ssh(str: &str) -> bool {
    str == "ssh" || str == "git"
}

#[no_mangle]
fn get_part(url: &str, format: &str, l: usize) -> Option<&str> {
    let mut has = false;
    let mut tmp = String::new();
    let mut tmp_url = url.to_string();
    let mut fmt_url = url.to_string();

    fmt_url.drain(0..l);
    let len = fmt_url.parse::<usize>().unwrap();

    tmp_url.drain(len..);

    if tmp != tmp_url {
        has = true;
        tmp = fmt_url;
    }

    Some(if has {tmp.as_str()} else {None}) 
}

#[no_mangle]
fn url_get_protocol(url: &str) -> Option<&str> {
    let mut protocol = String::with_capacity(URL_PROTOCOL_MAX_LENGTH);
    match url.find("://") {
        Some(idx) => {
            protocol.push_str(&url[..idx]);
            if url_is_protocol(&protocol) {
                return Some(protocol.as_str());
            }
        },
        None => ()
    }
    None
}

#[no_mangle]
fn url_get_auth(url: &str) -> Option<&str> {
    let protocol = url_get_protocol(url)?;
    let l = protocol.len() + 3;
    get_part(url, "%[^@]", l)
}


fn main() { 
    let url = "http://user:pass@subdomain.host.com:8080/p/a/t/h?query=string#hash";
    assert_eq!("/p/a/t/h?query=string#hash", url_get_path(url).unwrap());
}
#[no_mangle]
fn __vert_unused_main_2(){
}