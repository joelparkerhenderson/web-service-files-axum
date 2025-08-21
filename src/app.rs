/// Use axum capabilities.
//use axum::routing::get;
use tower_http::services::ServeDir;

/// Create our application by creating our router.
pub fn app() -> axum::Router {
    axum::Router::new().fallback_service(ServeDir::new("files"))
}

#[cfg(test)]
mod tests {
    use super::*;
    use axum_test::TestServer;

    #[tokio::test]
    async fn test() {
        let app: axum::Router = app();
        let server = TestServer::new(app).unwrap();
        let response_text = server.get("/").await.text();
        assert_eq!(response_text, "<html>\n  <body>\n    <h1>headline</h1>\n    <p>paragraph</p>\n  </body>\n</html>\n");
    }

}
