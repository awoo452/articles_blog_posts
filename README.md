# Articles & Blog Posts Standard

This repo is the canonical standard for managing long-form content (articles and blog posts) across apps. It provides a simple, consistent schema plus a basic admin flow for creating and publishing content.

## What This Is

- A Rails app with a single `Article` model used for both articles and blog posts.
- A standardized set of fields, statuses, and content types so content stays consistent between apps.
- A public index + detail page, plus a lightweight admin CRUD screen.

## When To Use

- You need blog posts, articles, or any long-form content.
- You want a standard schema and publishing workflow that can be copied between apps.

## Public vs Admin Access

- Public pages: `GET /` and `GET /articles/:slug`
- Admin pages: `GET /admin/articles`

This template does not include authentication. Protect the `/admin` namespace in each app based on your own access rules.

## Article Schema

Required fields:
- `title`
- `summary`
- `body`
- `status`
- `content_type`
- `slug` (auto-generated if blank)

Optional fields:
- `published_at`
- `cover_image_key`
- `cover_image_alt`

Status values:
- `draft`
- `published`

Content types:
- `article`
- `blog_post`

## Publishing Rules

- The public index only shows `published` entries.
- If `published_at` is present, the entry is visible when `published_at <= now`.
- If `published_at` is blank, publish time defaults to when the status is set to `published`.

## Image Conventions

- `cover_image_key` can be a local asset filename (in `app/assets/images`) or an S3 key.
- Rendering uses `image_tag`, so absolute URLs will also work.

## Prerequisites

- Ruby (see `.ruby-version`)
- PostgreSQL

## Local Setup (Optional)

```bash
bundle install
bin/rails db:create db:migrate
bin/rails db:seed
bin/rails server
```

Then open `http://localhost:3000`.

## Notes

- `db/seeds.rb` includes sample entries for quick previews.
- Slugs are generated from the title and kept unique.
