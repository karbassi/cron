#!/usr/bin/env bash

# This script calls a list of URLs in parallel using `curl` with various
# options specified in `.curlrc`.

# Parallel options:
# - `--no-notice`: Do not print a notice about the number of jobs started.
# - `--jobs 10`: Use 10 parallel jobs to execute the `curl` command.
# - `--arg-file urls.txt`: Read the list of URLs from the `urls.txt` file.
# - `curl`: Call `curl` to send HTTP requests.
# - `--config .curlrc`: Use the options specified in the `.curlrc` file.

# Run `parallel` with the specified options to call each URL in parallel.
parallel \
    --no-notice \
    --jobs 10 \
    --arg-file urls.txt \
    curl \
    --config .curlrc
