# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.9] - 2026-03-30
### Changed
- Updated thruster to 0.1.20.

## [0.0.8] - 2026-03-30
### Changed
- Updated Rails to 8.1.3 and action_text-trix to 2.1.18 to address security advisories.

## [0.0.7] - 2026-03-30
### Changed
- Updated mcp to 0.10.0 to address CVE-2026-33946.

## [0.0.6] - 2026-03-21
### Changed
- Standardized README sections to the shared format.

## [0.0.5] - 2026-03-21
### Changed
- Standardized changelog dates to YYYY-MM-DD.

## [0.0.4] - 2026-03-20
### Changed
- Updated `solid_queue` to 1.4.0.
- Updated GitHub Actions: `actions/cache` v5 and `actions/upload-artifact` v7.

## [0.0.3] - 2026-03-20
### Fixed
- Added system test scaffolding so `test:system` runs in CI.
- Added a basic system test that hits the articles landing page.

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
