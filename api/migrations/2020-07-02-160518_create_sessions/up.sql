CREATE TABLE sessions (
    id BINARY(16) PRIMARY KEY DEFAULT (UUID_TO_BIN(UUID())),
    token BINARY(16) NOT NULL,
    user BINARY(16) NOT NULL,
    expires DATETIME NOT NULL,
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
)