CREATE TABLE
  public.users (
    id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,
    email TEXT NOT NULL,
    passwordHash TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT users_email_key UNIQUE (email)
  ) TABLESPACE pg_default;

CREATE TABLE
  public.posts (
    id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,
    title TEXT NOT NULL,
    CONTENT TEXT NOT NULL,
    author_id BIGINT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT posts_pkey PRIMARY KEY (id),
    CONSTRAINT posts_author_id_fkey FOREIGN KEY (author_id) REFERENCES users (id) ON DELETE CASCADE
  ) TABLESPACE pg_default;