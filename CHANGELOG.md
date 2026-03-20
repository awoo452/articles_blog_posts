# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.2] - 2026-03-20
### Fixed
- Adjusted array literal spacing to satisfy the RuboCop `Layout/SpaceInsideArrayLiteralBrackets` rule.
- Added a PostgreSQL service and `DATABASE_URL` to GitHub Actions `test` and `system-test` jobs.

## [0.0.1] - 2026-03-20
### Added
- Standardized `Article` model supporting articles and blog posts.
- Public index/show pages plus admin CRUD screens (no auth included).
- Draft/published workflow with scheduling and slug handling.
- PostgreSQL database configuration.
- Seed data for quick previews.
