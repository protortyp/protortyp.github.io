set shell := ["bash", "-cu"]

# Create a new post in _posts with Chirpy front matter.
# Usage: just new "My Post Title"
new title:
    #!/usr/bin/env bash
    set -euo pipefail
    slug=$(echo "{{title}}" | tr '[:upper:]' '[:lower:]' \
        | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')
    date=$(date +%Y-%m-%d)
    datetime=$(date +"%Y-%m-%d %H:%M:%S %z")
    file="_posts/${date}-${slug}.md"
    if [ -e "$file" ]; then
        echo "refusing to overwrite $file" >&2
        exit 1
    fi
    cat > "$file" <<EOF
    ---
    title: {{title}}
    date: ${datetime}
    categories: []
    tags: []
    ---

    EOF
    echo "$file"
