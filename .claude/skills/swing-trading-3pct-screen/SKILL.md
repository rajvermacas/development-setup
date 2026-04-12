---
name: swing-trading-3pct-screen
description: Analyze Indian swing-trading candidates from a Screener.in HTML stock screen using TradingView MCP and a hard 3% stop-loss rule. Use when asked to fetch all pages from a Screener.in screen, avoid the JSON endpoint, verify EMA 10/20/50/100/200 through the "10 in 1 Different Moving Averages" study, rank stocks for swing trading, and write markdown reports with entry, stoploss, target, support-map, and rejection reasoning.
---

# Swing Trading 3pct Screen

## Overview

Use this skill for the exact workflow of screening Indian stocks from Screener.in and narrowing them to swing-trade candidates that are unlikely to violate a hard 3% stop. The output is a markdown report that explains every number used for entry, stoploss, first trouble area, and swing target.

## Workflow

1. Run [`scripts/ensure_socat.sh`](scripts/ensure_socat.sh) first.
2. Confirm TradingView MCP connectivity with `tv_health_check`.
3. Fetch the Screener.in screen as HTML across every page. Do not use the JSON endpoint.
4. Confirm the chart contains `10 in 1 Different Moving Averages ( SMA/EMA/WMA/RMA/HMA/VWMA )`.
5. Confirm `MA 1-5` are `EMA 10/20/50/100/200` on `Close`. If they are wrong, fix them before analysis. Do not continue with guessed values.
6. Analyze weekly, daily, and hourly charts only.
7. Apply the selection rules from [references/methodology.md](references/methodology.md).
8. Create a fresh timestamped report directory under `docs/swing-trading/`.
9. Write the markdown report set inside that timestamped directory.

## Screen Fetch Rules

- Fetch the user-provided Screener.in screen URL directly as HTML.
- Follow every page shown by pagination text such as `Showing page 1 of 2`.
- Deduplicate by company slug from `/company/<slug>/`.
- Record the full universe, not just the selected names.
- Fail fast if the screen table or pagination text cannot be found.
- Do not use `?format=json` or any sign-in-protected export path.

## TradingView Rules

- Ensure the `socat` tunnel exists before any TradingView MCP calls.
- Use `quote_get`, `chart_get_state`, `data_get_indicator`, and `data_get_study_values` to verify the chart state.
- Use only the EMA stack from the `10 in 1` study for trend and support decisions.
- Use weekly, daily, and `60` minute timeframes for every actionable name.
- Prefer current-price setups only when support is already stacked directly below price.
- If the chart setup is missing or TradingView is unreachable, stop with a clear error instead of inventing levels.

## Report Output

Create a new folder first:

- `docs/swing-trading/YYYY-MM-DD-HHMMSS-utc/`

Write these files inside that folder:

- `docs/swing-trading/YYYY-MM-DD-HHMMSS-utc/README.md`
- `docs/swing-trading/YYYY-MM-DD-HHMMSS-utc/3pct-selected-and-watchlist.md`
- `docs/swing-trading/YYYY-MM-DD-HHMMSS-utc/3pct-rejected.md`
- `docs/swing-trading/YYYY-MM-DD-HHMMSS-utc/screen-universe.md`

Keep the report readable:

- `README.md`: short summary, counts, and top table.
- `3pct-selected-and-watchlist.md`: full reasoning for selected and near-valid names.
- `3pct-rejected.md`: compact rejection table for the rest of the universe.
- `screen-universe.md`: raw full-screen appendix proving that all pages were covered.
- Use a fresh timestamped folder on every run so older analyses remain intact.

## Number Discipline

- Explain every number you publish.
- `3% Floor` must be `CMP x 0.97`.
- `Stoploss` must stay at or above that floor.
- `Entry` must be either current price or a tightly defined pullback zone.
- `First Trouble Area` must be the nearest clear resistance.
- `Swing Target` must be tied to resistance and at least a defensible `2R` style framework.
- If a valid setup does not exist inside the 3% risk rule, reject it or keep it on watch. Do not stretch the stop.

## Resource Use

- Use [references/methodology.md](references/methodology.md) for the fundamental and technical filters, ranking logic, and report language.
- Use [`scripts/ensure_socat.sh`](scripts/ensure_socat.sh) for the TradingView prerequisite instead of rewriting that shell logic.
