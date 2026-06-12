# Pipe.sh

Enables executing shell scripts which are stored on GitHub by using the GitHub CLI.

## Usage

```
curl -L https://raw.githubusercontent.com/porscheofficial/public-tooling/refs/heads/main/pipe.sh | [COMMIT=<branch>] bash -s -- <owner/repo> <path/to/script.sh> [args...]
```

| Argument            | Description                                                            |
|---------------------|------------------------------------------------------------------------|
| `<owner/repo>`      | The GitHub repository that contains the script. |
| `<path/to/script.sh>` | Path to the script within the repository.                              |
| `[args...]`         | Optional positional arguments passed through to the script up to 7.    |
| `[COMMIT=<branch>]` | Optional branch, tag or commit to fetch the script from. Defaults to `main`. |

### Example

```
curl -L https://raw.githubusercontent.com/porscheofficial/public-tooling/refs/heads/main/pipe.sh | COMMIT=main bash -s -- porsche-xyz/myrepo myscript.sh arg1 arg2
```
