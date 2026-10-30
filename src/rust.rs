//Requires a Cargo.toml as follows:
/*
[package]
name = "MarsInRust"
version = "0.1.1"
authors = ["millecodex"]
edition = "2021"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html

[dependencies]
rand = "0.8.3"
*/

use std::io;
use rand::Rng;

// I keep the manifest note at the top because this file will not
// build with rustc on its own. rand is an outside crate, so Cargo
// has to fetch it and link it before any of this runs.
fn main() {
    // generates a random positive integer from 1-10, inclusive
    // I write the range as 1..11 because the top end is excluded.
    // I want 1 through 10, and 1..10 would quietly stop at 9.
    let secret_number: u8 = rand::thread_rng().gen_range(1..11);

    loop {
        println!("What's your guess?");
        let mut user_guess: String = String::new();
        // I split two failures that look alike. If read_line itself
        // fails, that is a real input problem, so I let expect stop
        // the program. A guess I simply cannot parse is handled by
        // the match below instead, and the game survives it.
        io::stdin().read_line(&mut user_guess).expect("Error encountered while getting the user input.");

        let user_number: u8 = match user_guess.trim().parse() {
            Ok(x) => x,
            Err(_) => {
                println!("Invalid. You must input positive integers within the range 1-10 only, inclusive.");
                continue
            }
        };
        
        // I only compare the guess here. A value like 50 parses fine
        // as a u8, so I never reject it as out of range; it just
        // comes back as too big.
        if user_number > secret_number {
            println!("Too big!");
        } else if user_number < secret_number {
            println!("Too small!");
        } else {
            println!("You win!");
            break;
        }
    }
}
