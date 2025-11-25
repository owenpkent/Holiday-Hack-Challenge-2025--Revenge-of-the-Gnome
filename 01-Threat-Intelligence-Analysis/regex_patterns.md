# IOC Extraction Regex Patterns

This file contains regex patterns for extracting Indicators of Compromise (IOCs) from phishing emails and threat intelligence sources.

## Domains

**Pattern:**
```regex
(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}
```

**Description:** Matches domain names with valid TLDs (e.g., `example.com`, `mail.icicleinnovations.mail`)

**Explanation:**
- `(?:...)` - Non-capturing group
- `[a-zA-Z0-9]` - Start with alphanumeric
- `(?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?` - Optional middle characters (0-61) ending with alphanumeric
- `\.` - Literal dot
- `+` - One or more domain levels
- `[a-zA-Z]{2,}` - TLD with at least 2 letters

---

## IP Addresses

**Pattern:**
```regex
\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b
```

**Simple Pattern (less strict):**
```regex
\b(?:\d{1,3}\.){3}\d{1,3}\b
```

**Description:** Matches IPv4 addresses (e.g., `192.168.1.1`, `172.16.254.1`)

**Explanation (strict pattern):**
- `\b` - Word boundary
- `(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)` - Matches 0-255
  - `25[0-5]` - 250-255
  - `2[0-4][0-9]` - 200-249
  - `[01]?[0-9][0-9]?` - 0-199
- `\.` - Literal dot (repeated 3 times with `{3}`)
- `\b` - Word boundary

---

## Email Addresses

**Pattern:**
```regex
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}
```

**Description:** Matches email addresses (e.g., `user@example.com`, `info@icicleinnovations.mail`)

**Explanation:**
- `[a-zA-Z0-9._%+-]+` - Local part (before @)
  - Allows letters, numbers, dots, underscores, percent, plus, hyphen
- `@` - Literal @ symbol
- `[a-zA-Z0-9.-]+` - Domain name
- `\.` - Literal dot
- `[a-zA-Z]{2,}` - TLD with at least 2 letters

---

## URLs

**Pattern:**
```regex
https?://[^\s]+
```

**Strict Pattern:**
```regex
https?://(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&/=]*)
```

**Description:** Matches HTTP and HTTPS URLs (e.g., `https://example.com/path`, `http://malicious.site`)

**Explanation (simple pattern):**
- `https?://` - Matches http:// or https://
- `[^\s]+` - One or more non-whitespace characters

**Explanation (strict pattern):**
- `https?://` - Protocol
- `(?:www\.)?` - Optional www subdomain
- `[-a-zA-Z0-9@:%._\+~#=]{1,256}` - Domain characters
- `\.[a-zA-Z0-9()]{1,6}` - TLD
- `\b` - Word boundary
- `(?:[-a-zA-Z0-9()@:%_\+.~#?&/=]*)` - Optional path, query, fragment

---

## Phone Numbers (Bonus)

**Pattern:**
```regex
(?:\+?1[-.\s]?)?\(?[0-9]{3}\)?[-.\s]?[0-9]{3}[-.\s]?[0-9]{4}
```

**Description:** Matches US phone numbers (e.g., `523.555.0100`, `(523) 555-0101`)

**Explanation:**
- `(?:\+?1[-.\s]?)?` - Optional country code
- `\(?[0-9]{3}\)?` - Area code (3 digits, optional parentheses)
- `[-.\s]?` - Optional separator
- `[0-9]{3}` - Exchange code (3 digits)
- `[-.\s]?` - Optional separator
- `[0-9]{4}` - Line number (4 digits)

---

## Testing

Use these resources to test and refine patterns:
- [Regex101.com](https://regex101.com/) - Interactive regex tester
- [RegexPal](https://www.regexpal.com/) - Online regex tester
- Python: `re` module or `regex` module
- Online validators for specific IOC types

## Notes

- Always test patterns against sample data before using in production
- Some patterns may need adjustment based on specific use cases
- Consider false positives when extracting IOCs
- Legitimate assets should be filtered out from results
