# Schedule Management Guide

This guide explains how to update the conference schedule for future years while keeping the system flexible and maintainable.

## File Structure

- **`_data/schedule_2025.yml`** - The schedule data file (create a new one for each year)
- **`_includes/schedule_table.html`** - The template that renders the schedule (reusable)
- **`programme/schedule.md`** - The page that displays the schedule

## Updating the Schedule for a New Year

### Step 1: Create a New Data File

Copy `_data/schedule_2025.yml` to `_data/schedule_2026.yml` (or next year):

```bash
cp _data/schedule_2025.yml _data/schedule_2026.yml
```

### Step 2: Update Key Fields in the New File

In `schedule_2026.yml`, update:

```yaml
year: 2026
start_date: 2026-07-13  # Update to new dates
end_date: 2026-07-17
```

### Step 3: Update Days and Dates

Update the `days` section with new dates:

```yaml
days:
  - day: Monday
    date: 2026-07-13    # Update date
    sessions:
      # ... sessions for this day
```

### Step 4: Update Sessions

For each session, you can:

- **Reference speakers by ID**: Use `speaker_id: keynote-01` to link to speakers from `_data/programme.yml`
- **Update titles**: Change `title` field
- **Update descriptions**: Change `description` field
- **Change session types**: Use `session_type: keynote|practical|break|special|social`

Example keynote session:
```yaml
- time_slot: "09:30 - 11:00"
  speaker_id: keynote-01
  title: "Dr Ulrik Beierholm"
  session_type: keynote
  description: "Human Vision"
```

Example break/special session:
```yaml
- time_slot: "11:00 - 11:30"
  title: "Coffee"
  session_type: break
  color: orange
  speaker: null
  description: null
```

### Step 5: Update the Schedule Page

In `programme/schedule.md`, update the include statement if needed:

```liquid
{% include schedule_table.html schedule_data=site.data.schedule_2026 speakers=site.data.programme.keynotes %}
```

## Adding New Speakers

1. Add the speaker to `_data/programme.yml` with:
   - `id`: Unique identifier (e.g., `keynote-15`)
   - `name`: Full name
   - `topic`: Talk title/description
   - `url`: Speaker's website or profile
   - Other fields: `img`, `bio`, `job`

2. Reference them in the schedule by their `id`:
```yaml
speaker_id: keynote-15
title: "Speaker Name"
description: "Talk Title"
```

## Customizing Session Types

To add or modify session types, edit the `session_types` section in the YAML file and add corresponding CSS classes in `_includes/schedule_table.html`.

Current session types:
- **keynote**: Main presentations
- **practical**: Hands-on labs
- **break**: Coffee, lunch, etc.
- **special**: Registration, opening, closing
- **social**: Social events

## Styling

The schedule uses CSS variables for colors. To customize colors, edit the `<style>` section in `_includes/schedule_table.html`:

```css
.session-coffee {
  background-color: #d4a574;  /* Brown */
  color: #333;
}

.session-keynote {
  background-color: #e8e8e8;  /* Light gray */
  color: #333;
}
```

## Linking to Sessions

Speaker names automatically link to their speaker profile (via the `url` field in `_data/programme.yml`). To customize link destinations, modify the template or add custom URLs in the schedule data.

## Time Slots

Time slots are defined at the top of the schedule file and apply to all days:

```yaml
time_slots:
  - slot: "09:30 - 11:00"
    minutes: 90
  - slot: "11:00 - 11:30"
    minutes: 30
  # ... more slots
```

To change times for a new year, update this section. The template will automatically adjust the table.

## Tips for Year-to-Year Updates

1. **Reuse the template** - `_includes/schedule_table.html` stays the same across years
2. **Copy-paste the data file** - Start with a previous year's schedule and modify
3. **Use speaker IDs** - If your speakers return, keep the same IDs; new speakers get new IDs
4. **Version control** - Commit new schedule files to git to keep history
5. **Test locally** - Run `bundle exec jekyll serve` to preview changes before deploying

## Troubleshooting

### Sessions don't appear
- Check that the `time_slot` matches exactly with an entry in `time_slots`
- Verify the day name matches (e.g., "Monday", not "monday")

### Speaker links don't work
- Ensure the `speaker_id` exists in `_data/programme.yml`
- Check that the speaker has a valid `url` field

### Schedule won't build
- Validate YAML syntax (check colons, indentation, quotes)
- Use an online YAML validator if needed

