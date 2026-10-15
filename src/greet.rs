pub fn greet() -> String {
    "Hello, world!".to_string()
}

#[cfg(test)]
mod tests {
    use super::greet;

    #[test]
    fn greet_returns_hello_world() {
        assert_eq!(greet(), "Hello, world!");
    }
}
