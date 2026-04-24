# Obscura File Formats

## Design Goals
Obscura custom file formats are designed to be:
- human-readable when possible
- machine-parseable
- versioned
- signed where needed
- easy to integrate with desktop MIME handling

## Canonical Extensions

### .obcfg
Obscura configuration bundle.
Used for:
- desktop settings
- shell presets
- system tuning profiles
- app configuration archives

Recommended container:
- tar.zst
- manifest.json
- signature optional

### .obtheme
Obscura theme bundle.
Used for:
- shell themes
- GTK/QT theme assets
- wallpaper packs
- cursor/icon mappings

Recommended container:
- zip or tar.zst
- theme.json
- assets/
- preview.png
- signature optional

### .oblab
Obscura lab bundle.
Used for:
- training labs
- security scenarios
- notebooks
- environment snapshots

Recommended container:
- tar.zst
- lab.json
- scenario/
- notes/
- metadata/

### .obpack
Obscura package bundle.
Used for:
- bundle distribution of Obscura packages
- curated app sets
- offline install groups

Recommended container:
- tar.zst
- manifest.json
- packages/
- signature required for release bundles

### .obprofile
Obscura profile bundle.
Used for:
- system presets
- gaming/security roles
- install-time selections

Recommended container:
- JSON + signature
- or compressed bundle with manifest

## Versioning
Every format must include:
- format version
- schema version
- created timestamp
- author/source
- optional signature

## Safety
- No execution by default
- No automatic privilege escalation
- Only explicit handlers may process bundles
