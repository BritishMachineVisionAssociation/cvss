# Archiving a Year (`archive_year.sh`)

This guide covers how to snapshot the current site into `previous/<year>/` at the
end of a summer school edition, and the manual steps needed to stand up the
next year afterwards.

## What `archive_year.sh` does

1. Reads `conf_year` out of `_config.yml` (e.g. `2026`).
2. Backs up `_config.yml` to `_config.yml.bak`.
3. Temporarily rewrites `baseurl` to `/previous/<year>` so generated links
   inside the snapshot resolve correctly.
4. Temporarily adds `previous`, `README`, `archive_year.sh`, `CNAME`, and the
   Google site-verification file to the config's `exclude:` list, so they
   aren't copied into the snapshot (`jekyll build` has no `--exclude` CLI
   flag, so this has to go through the config file).
5. Runs `bundle exec jekyll build --destination previous/<year>`.
6. Restores the original `_config.yml` (the temporary one is kept as
   `_config.yml-generated.bak` for reference).

## Running it

```bash
cd /path/to/cvss
./archive_year.sh
```

Run this **before** you start editing `_config.yml`/data files for the next
year, while `conf_year` still points at the edition you're archiving.

## Known issues / things to check

- **Stale output**: the script doesn't clean `previous/<year>/` before
  building, so re-running it for the same year can leave old files behind
  alongside new ones. Delete `previous/<year>/` first if you need a clean
  rebuild.
- **Silent build failures**: the script has no error checking after the
  `jekyll build` step — if the build fails, `_config.yml` is still restored
  and the script exits 0. Check the build output for errors before trusting
  the archive.
- **Leftover backup files**: `_config.yml.bak` (if a run is interrupted) and
  `_config.yml-generated.bak` are not covered by `.gitignore`. Delete them or
  avoid committing them.
- **Historical bloat**: an earlier run (archiving 2025) copied the then
  non-excluded `previous/` folder into the snapshot, producing nested,
  broken duplicates under `previous/2025/previous/...` (several levels
  deep, including a stray `2025_old/`). This is already committed to git.
  The `--exclude` flags added to the script prevent this from happening
  again, but the existing nested junk under `previous/2025/previous/` has
  not been cleaned up and should be removed separately if desired.

## Manual steps for the next year (not handled by the script)

After archiving, update these for the new edition:

- `_config.yml`: `edition`, `formattd-edition`, `brand`, `short-title`,
  `conf_year`, `logo` (new `cvss_logo_<year>.png` asset), `description`,
  `dates`.
- `_data/previous_editions.yml`: add an entry for the year you just archived,
  pointing at `https://cvss.bmva.org/previous/<year>/`.
- `_data/schedule_<year>.yml`: create from the previous year's file (see
  `README/SCHEDULE_MANAGEMENT.md`).
- `programme/schedule.md` **and** `_includes/global_search_modal.html`: both
  hardcode `site.data.schedule_<year>` — update both references. The site
  search modal is easy to miss since `SCHEDULE_MANAGEMENT.md` doesn't
  mention it.
- Registration deadlines, FAQ dates, and social event dates in
  `_data/faq.yml`, `attending/registration.md`, `attending/social-event.md`.
