# Swing Trading 3% Methodology

## Goal

Find the small number of stocks in a Screener.in universe that have the highest technical difficulty falling more than 3% from the current trade location.

## Required Inputs

- Screener.in HTML screen URL
- TradingView MCP access
- `10 in 1 Different Moving Averages` study configured as:
  - `MA 1 = EMA 10 on Close`
  - `MA 2 = EMA 20 on Close`
  - `MA 3 = EMA 50 on Close`
  - `MA 4 = EMA 100 on Close`
  - `MA 5 = EMA 200 on Close`

## Timeframes

- Weekly: trend and major structure
- Daily: swing structure and resistance map
- Hourly: trigger quality and near-price support density

## Fundamental Filter

Use the screen columns first, then the Screener company page only when extra context is needed.

Prefer:

- Positive quarterly profit growth
- Positive quarterly sales growth
- Acceptable or strong ROCE
- No obvious profit collapse or business deterioration

Downgrade or reject when:

- Profit growth is sharply negative
- Sales growth is sharply negative
- ROCE is weak relative to the universe
- The chart is good but fundamentals are too weak to justify a tight-stop swing

## Technical Filter

Selected now:

- Weekly trend is bullish or at least clearly constructive
- Daily trend is bullish and clean
- Hourly trend is bullish and not sloppy
- Multiple support layers sit inside 3% below CMP
- Price is close enough to those support layers that a real stop can stay inside the 3% rule

Watch only:

- The broader trend is good
- Support exists inside 3%
- The entry is still too extended, or the support stack is not dense enough yet, or hourly structure is not clean enough

Reject:

- No meaningful support inside 3%
- Daily or hourly structure is too messy for a tight stop
- Fundamentals are too weak relative to the rest of the screen

## Support Layer Logic

Count support references inside the 3% band below CMP. Stronger cases usually have several of these clustered together:

- Hourly EMA20
- Hourly EMA50
- Hourly EMA100
- Hourly EMA200
- Daily EMA10
- Daily EMA20
- Recent hourly swing low
- Recent daily swing low

More layers inside the band means there are more reasons for price to hold before the stop is hit.

## Number Definitions

- `CMP`: current TradingView price used for the decision
- `3% Floor`: `CMP x 0.97`
- `Entry`: current price only if support is already underneath; otherwise define a narrower pullback entry zone
- `Stoploss`: below the lowest support that still stays within the 3% rule
- `First Trouble Area`: nearest obvious resistance where a stall is likely
- `Swing Target`: broader target that still respects visible resistance and supports a roughly `2R` style payoff
- `Support Map`: the exact layers inside 3% and how far below CMP each layer sits

## Output Structure

Create a fresh timestamped directory on each run:

- `docs/swing-trading/YYYY-MM-DD-HHMMSS-utc/`

Produce four files inside that directory:

- `README.md`: summary and ranking table
- `3pct-selected-and-watchlist.md`: full writeups for selected and watch names
- `3pct-rejected.md`: compact table for rejected names
- `screen-universe.md`: all names scraped from all HTML pages

Do not overwrite an older run. Each analysis should keep its own timestamped folder.

## Writing Style

- Explain why each chosen setup is less likely than peers to break 3% down from the current trade location.
- Be direct about weak setups.
- If nothing qualifies, say so clearly.
- Use exact numbers and tie each number back to structure or EMA support.
- Mention the date so the report is clearly point-in-time.
