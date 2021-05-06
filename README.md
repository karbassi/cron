# Keep Alive Cron via GitHub Actions

This project runs a Bash script that uses `curl` to call a list of URLs from a text file, with various options specified in a separate `.curlrc` file. The script is set up to run as a cron job using a YAML workflow file in `.github/workflows/cron-keep-alive.yaml`.

## Develpoment Prerequisites

- Bash shell
- [GNU `parallel`](https://www.gnu.org/software/parallel/) utility
- `curl` command-line tool

## Installation

1. Clone this repository to your local machine
2. Change to the project directory

## Usage

1. Add the URLs you want to call to the `urls.txt` file, with one URL per line.
2. Modify the options in the `.curlrc` file as desired.
3. Run the `run.sh` script to call the URLs using `curl`

```bash
bash ./run.sh
```

This will use `parallel` to call each URL in the `urls.txt` file in parallel, with options specified in `.curlrc`.

## Cron Job

A cron job has been set up using a YAML workflow file in `.github/workflows/cron-keep-alive.yaml`. This workflow runs the `run.sh` script every 30 minutes between 5am and 10pm UTC to keep the URLs alive.

## License

This project is licensed under the [MIT License](LICENSE).
