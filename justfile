set shell := ["bash", "-cu"]

# Serve the blog locally on 0.0.0.0:4000
serve:
    bundle exec jekyll serve --livereload --host 0.0.0.0 --port 4000

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
