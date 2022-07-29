# Installation

### Method 1: Using Pre-compiled Binaries
The pre-compiled binaries for different systems are available in the [**Releases**](https://github.com/c4p-n1ck/NtH1M/releases) page. You can download the one suitable for your system, unzip the file and start using NtH1M.

### Method 2: Using Crates.io
**NtH1M** is available on **[Crates.io](https://crates.io/crates/NtH1M)**. So, if you have Rust installed on your system, you can simply install **NtH1M** with the following command:

```bash
cargo install NtH1M
```

### Method 3: Manual Build
You will need the latest version (or at least a newer release) of Cargo to perform the manual build for NtH1M, to ensure that the build process proceeds properly.

It is highly recommended to use Rust and Cargo using **rustup**. If you would like to install it that way, you can go through the instructions provided at [https://www.rust-lang.org/tools/install](https://www.rust-lang.org/tools/install) or [https://rustup.rs/](https://rustup.rs/).

If you have Cargo installed, you can simply follow the steps below:
1. Clone this repository, `git clone https://github.com/c4p-n1ck/NtH1M`;
2. Go inside the folder, `cd NtH1M`;
3. Use the `cargo build` command,
4. Go inside the newly-created **target** folder, and open the **debug** folder inside it, `cd target/debug`;
5. You will find **NtH1M.exe** (on Microsoft Windows) or **NtH1M** binary (on most of the other platforms).

If you would like to get a release binary for **NtH1M**, you can use the **`--release`** flag in **Step 3**, and go to the **release** folder (i.e. `cd target/release`) instead in **Step 4**.

**For older versions of NtH1M as well as some infrequently used or older platforms or system architectures:**
Before doing a manual build of NtH1M or installing through **Crates.io** with **`cargo`**, you might need to have OpenSSL installed in your system. Sometimes if you get an error during the manual building process, then the odds of the error taking place due to OpenSSL are high. Please check out the [issue #1](https://github.com/c4p-n1ck/NtH1M/issues/1) to figure out a solution for this issue.

The installation walkthrough for **NtH1M** has been uploaded to YouTube, covering all of these three methods, and you can watch the video here: **[How to Install and Use NtH1M (Now, the Host is Mine!)? Super Fast Sub-domain Takeover Detection!](https://youtu.be/CUTbqFhRjwY)**
