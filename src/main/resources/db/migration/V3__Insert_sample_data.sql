CREATE TABLE users
(
    id         BIGSERIAL PRIMARY KEY,
    email      VARCHAR(100) NOT NULL UNIQUE,
    password   VARCHAR(100) NOT NULL,
    name       VARCHAR(100) NOT NULL,
    role       VARCHAR(20)  NOT NULL DEFAULT 'ROLE_USER',
    created_at TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE short_urls
(
    id           BIGSERIAL PRIMARY KEY,
    short_key    VARCHAR(10) NOT NULL UNIQUE,
    original_url TEXT        NOT NULL,
    is_private   BOOLEAN     NOT NULL DEFAULT FALSE,
    expires_at   TIMESTAMP,
    created_by   BIGINT,
    click_count  BIGINT      NOT NULL DEFAULT 0,
    created_at   TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_short_urls_users FOREIGN KEY (created_by) REFERENCES users (id)
);
INSERT INTO users (email, password, name, role) VALUES
('admin@gmail.com', 'admin', 'Administrator', 'ROLE_ADMIN'),
('siva@gmail.com', 'secret', 'Siva', 'ROLE_USER');

-- Insert sample short URLs
INSERT INTO short_urls (short_key, original_url, created_by, created_at, expires_at, is_private, click_count)
VALUES ('rs1Aed', 'https://www.darkweb.in/code-offline-with-local-ai-ollama', 1, TIMESTAMP '2024-07-15', NULL, FALSE, 0),
       ('hujfDf', 'https://www.darkweb.in/run-spring-boot-testcontainers-tests-at-jet-speed', 1, TIMESTAMP '2024-07-16', NULL, FALSE, 0),
       ('ertcbn', 'https://www.darkweb.in/running-custom-spring-initializr', 1, TIMESTAMP '2024-07-17', NULL, FALSE, 0),
       ('edfrtg', 'https://www.darkweb.in/an-email-template-of-asking-for-technical-help', 1, TIMESTAMP '2024-07-18', NULL, TRUE, 0),
       ('vbgtyh', 'https://www.darkweb.in/mastering-spring-boot-in-5-stages', 1, TIMESTAMP '2024-07-19', NULL, FALSE, 0),
       ('rtyfgb', 'https://www.darkweb.in/thymeleaf-layouts-using-fragment-expressions', 1, TIMESTAMP '2024-07-25', NULL, FALSE, 0),
       ('rtvbop', 'https://www.darkweb.in/spring-ai-rag-using-embedding-models-vector-databases', 1, TIMESTAMP '2024-07-26', NULL, FALSE, 0),
       ('2wedfg', 'https://www.darkweb.in/getting-started-with-spring-ai-and-open-ai', 1, TIMESTAMP '2024-07-27', NULL, TRUE, 0),
       ('6yfrd4', 'https://www.darkweb.in/langchain4j-retrieval-augmented-generation-tutorial', 1, TIMESTAMP '2024-07-28', NULL, FALSE, 0),
       ('r5t4tt', 'https://www.darkweb.in/langchain4j-ai-services-tutorial', 1, TIMESTAMP '2024-07-29', NULL, FALSE, 0),
       ('ffr4rt', 'https://www.darkweb.in/generative-ai-conversations-using-langchain4j-chat-memory', 1, TIMESTAMP '2024-08-10', NULL, FALSE, 0),
       ('9oui7u', 'https://www.darkweb.in/getting-started-with-generative-ai-using-java-langchain4j-openai-ollama', 1, TIMESTAMP '2024-08-11', NULL, FALSE, 0),
       ('cvbg5t', 'https://www.darkweb.in/go-for-java-springboot-developers', 1, TIMESTAMP '2024-08-12', NULL, FALSE, 0),
       ('nm6ytf', 'https://www.darkweb.in/spring-boot-jooq-tutorial-fetching-many-to-many-associations', 1, TIMESTAMP '2024-08-13', NULL, FALSE, 0),
       ('tt5y6r', 'https://www.darkweb.in/spring-boot-jooq-tutorial-fetching-one-to-many-associations', 1, TIMESTAMP '2024-08-14', NULL, FALSE, 0),
       ('fgghty', 'https://www.darkweb.in/spring-boot-jooq-tutorial-fetching-one-to-one-associations', 1, TIMESTAMP '2024-08-15', NULL, FALSE, 0),
       ('f45tre', 'https://www.darkweb.in/spring-boot-jooq-tutorial-crud-operations', 1, TIMESTAMP '2024-08-16', NULL, FALSE, 0),
       ('54rt54', 'https://www.darkweb.in/spring-boot-jooq-tutorial-getting-started', 1, TIMESTAMP '2024-08-17', NULL, FALSE, 0);