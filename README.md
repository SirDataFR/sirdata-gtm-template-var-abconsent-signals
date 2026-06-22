# Sirdata AB Consent Signals Decoder

## Overview

This GTM variable template decodes Sirdata AB Consent CMP signals from the `dataLayer` and returns `true` or `false` for a selected consent finality.

## How It Works

The template reads `sirdataPurposes` and `sirdataExtraPurposes` from the GTM `dataLayer` (pushed by the Sirdata ABconsent CMP via the `sirdata-cmp-api`) and evaluates whether the user has granted consent for a specific finality.

## Supported Finalities

| Finality | Required Signals | Source |
|----------|-----------------|--------|
| Non-personalized advertising | TCF Purposes 1 + 2 | `sirdataPurposes` |
| Personalized advertising | TCF Purposes 1 + 3 + 4 | `sirdataPurposes` |
| Audience measurement | TCF Purposes 1 + 8 | `sirdataPurposes` |
| Personalized content | TCF Purposes 1 + 5 + 6 | `sirdataPurposes` |
| Email pixels | Extra Purpose 7 | `sirdataExtraPurposes` |
| Session games | Extra Purpose 8 | `sirdataExtraPurposes` |
| Automatic identification data collection | Extra Purposes 9 + 10 | `sirdataExtraPurposes` |
| Cross-context transfers for personalized digital advertising | Extra Purpose 11 | `sirdataExtraPurposes` |

## Multilingual Support

The template UI supports 6 languages:
- English (default)
- Français
- Español
- Deutsch
- Italiano
- Português

## DataLayer Signal Example

```json
{
  "sirdataGdprApplies": 1,
  "event": "sirdataConsent",
  "sirdataPurposes": "|1|2|3|4|5|6|7|8|9|10|",
  "sirdataExtraPurposes": "|1|2|3|4|7|",
  "sirdataEventStatus": "useractioncomplete"
}
```

## Permissions

- `read_data_layer` — Reads `sirdataPurposes` and `sirdataExtraPurposes` from the dataLayer

## Installation

1. Open GTM → Templates → Variable Templates → New
2. Click More Actions → Import
3. Select the `template.tpl` file
4. Save the template
5. Create a new variable using this template
6. Select language and finality
7. Use the variable in tags, triggers, or other variables

## Version

1.0.0 — Initial release
