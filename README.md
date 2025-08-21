# Web service files axum

**[documentation](https://docs.rs/web-service-files-axum/)**
•
**[source](https://github.com/joelparkerhenderson/web-service-files-axum/)**
•
**[llms.txt](https://raw.githubusercontent.com/joelparkerhenderson/web-service-files-axum/refs/heads/main/llms.txt)**
•
**[crate](https://crates.io/crates/web-service-files-axum)**
•
**[email](mailto:joel@joelparkerhenderson.com)**

Web service that displays the program uptime by using Axum, Tokio, Rust.

This is a very simple web service that we use for testing our systems.


## Steps

Run the service using the default address 0.0.0.0:8080:

```sh
cargo run
```

You can browse files by name…

Browse <https://localhost:8080/index.html>

Browse <https://localhost:8080/index.txt>

Browse <https://localhost:8080/index.json>

You should see a response that shows the file contents.

## Options

Run the service using a command line option for a custom address:

```sh
cargo run -- "1.2.3.4:5678"
```

Run the service using an environment variable for a custom address:

```sh
export ADDRESS="1.2.3.4:5678"
cargo run
```

## References

Based on free open source software [Demo Rust Axum](https://github.com/joelparkerhenderson/demo-rust-axum).
