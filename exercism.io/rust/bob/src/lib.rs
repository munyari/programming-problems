pub fn reply(statement: &'static str) -> &'static str {
    match statement {
        "" =>  "Fine. Be that way!",
        _ if (statement.to_uppercase() == statement) =>  "Whoa, chill out!",
        _ if (statement.chars().last().unwrap() == '?') => "Sure.",
        _ => "Whatever.",
    }
}
