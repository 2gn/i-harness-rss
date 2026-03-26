run-website:
    cd generator/website && go run main.go

run-hn:
    cd generator/hackernews && go run main.go

run: run-website run-hn

update-docs:
    echo "# RSS Feeds" > feeds_list.md
    echo "" >> feeds_list.md
    for f in rss/*.rss; do \
        name=$(basename $f .rss); \
        filename=$(basename $f); \
        echo "* [$name](https://github.com/2gn/rss-crawler/raw/refs/heads/main/rss/$filename)" >> feeds_list.md; \
    done
