use std::process;
use std::env;
use std::fs;
use std::string::String;

pub fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() > 1 {
        let file = &args[1];
        let text = fs::read_to_string(file).expect("File not found");
        println!("{}", text);
    } else {
        println!("File not found");
        process::exit(0x1);
    }
}