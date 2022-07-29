# Usage

| Flag | Description                           | Example                              |
| ---- | ------------------------------------- | ------------------------------------ |
| -h   | Display help related to usage         | NtH1M -h                             |
| -t   | Scan a single target                  | NtH1M -t https://example.example.com |
| -f   | Scan a list of targets from a file    | NtH1M -f hostnames.txt               |
| -c   | Number of Concurrent Threads          | NtH1M -c 100 -f hostnames.txt        |
| -s   | Timeout for connections (in seconds)  | NtH1M -s 4 -f hostnames.txt          |
| -v   | Enable Verbose Mode                   | NtH1M -v -f hostnames.txt            |
| -o   | Write output to file                  | NtH1M -f hostnames.txt -o output.txt |
| -p   | Use this file as signature file input | NtH1M -p ./signatures.json [ -t / -f ] [-...] |
| -u   | Update signature cache                | NtH1M -u                             |
| -V   | Display the version information       | NtH1M -V                             |

*By default, **NtH1M** uses **`10`** **concurrent threads**, and **`5`** seconds of **timeout for connections**.*

***

### Use Case 1 (Single Target):

```bash
NtH1M -t https://example.example.com
```

### Use Case 2 (Multiple Targets):

```bash
NtH1M -f hostnames.txt
```

***

### Usage Demonstration(without -p flag):

![NtH1M Usage Demonstration \(without -p flag\)](https://github.com/TheBinitGhimire/NtHiM/raw/main/images/demonstration.gif)

> Also note that the name of the tool has been changes, since the command from `NtHiM` to `NtH1M`.
