# Sourcer
A plug-and-play candidate sourcing tool built with Elixir and Phoenix LiveView. Sourcer connects to your ATS via a swappable adapter pattern, lets you run boolean keyword searches, and displays results in a filterable LiveView UI.

Built for recruiters who want more control over their sourcing workflow without paying for premium ATS tiers.

## How It Works
Type a boolean search query in the UI (e.g. "Elixir AND (Phoenix OR LiveView) AND Remote")
Sourcer passes the query to your configured ATS adapter
Results come back as normalized %Candidate{} structs
Browse and filter results in the LiveView UI

## Project Status

### v1 — In Progress

 Behaviour-based adapter pattern
 %Candidate{} and %Filter{} structs
 Mock adapter with fake data
 Config-driven adapter selection
 LiveView UI
 Greenhouse adapter
 Boolean search passthrough
 CSV export (optional)
