# Terminal GPT {tgpt}
<p align="center">
  <img src="logo-no-background.png" width="300" alt="BJL13 Logo" />
</p>

<p align="center">
  <a href="https://github.com/bjl13/homebrew-gptcopilot">
    <img src="https://img.shields.io/badge/brew%20install-tgpt-810092?logo=homebrew&logoColor=white" alt="Install tgpt" />
  </a>
  <a href="https://bjl13.com">
    <img src="https://img.shields.io/badge/sysadmin-GPT%20copilot-008080?logo=openai&logoColor=white" alt="GPT Copilot" />
  </a>
  <a href="https://github.com/bjl13/homebrew-gptcopilot/releases">
    <img src="https://img.shields.io/badge/version-0.1.0-808000" alt="Version" />
  </a>
</p>

<p align="center">
  <a href="https://bjl13.com">bjl13.com</a> · <a href="https://github.com/bjl13/homebrew-gptcopilot">Source</a>
</p>

---

# tgpt – A Sysadmin Copilot in Your Terminal

`tgpt` is a command-line REPL that turns your shell into a GPT-powered sysadmin assistant. Run commands as usual, and get immediate analysis, risk assessment, and suggested next steps from OpenAI’s GPT models.

---

## 🛠 Installation

```bash
brew tap bjl13/gptcopilot
brew install tgpt
```

Alternatively, clone and install manually:

```bash
git clone https://github.com/bjl13/homebrew-gptcopilot.git
cd homebrew-gptcopilot
chmod +x tgpt
mv tgpt ~/.local/bin/
```

---

## 🚀 Quick Start

```bash
tgpt
🔹 Enter command: systemctl status nginx
💬 GPT Copilot says: "The nginx service is active and running, but the last reload encountered an error..."
```

---

## ⚙️ Command-Line Flags

| Flag           | Description                                                   |
| -------------- | ------------------------------------------------------------- |
| `--model`      | Override the model (e.g., `gpt-4`, `gpt-4o`, `gpt-3.5-turbo`) |
| `--log`        | Specify a custom history log path                             |
| `--version`    | Print version number and exit                                 |
| `--help`, `-h` | Show help/usage                                               |

```bash
tgpt --model gpt-4 --log ~/.tgpt_history
```

---

## 🔐 How to Configure Your OpenAI API Key

Before using `tgpt`, set your OpenAI API key as an environment variable:

### Zsh (`~/.zshrc`)

```bash
echo 'export OPENAI_API_KEY="sk-..."' >> ~/.zshrc
source ~/.zshrc
```

### Bash (`~/.bashrc` or `~/.bash_profile`)

```bash
echo 'export OPENAI_API_KEY="sk-..."' >> ~/.bashrc
source ~/.bashrc
```

### Temporary (one-time)

```bash
export OPENAI_API_KEY="sk-..."
tgpt
```

> **Tip:** You can also customize defaults:
>
> ```bash
> export MODEL="gpt-4o"                      # Default model
> export HISTORY_LOG="$HOME/.tgpt_history"  # Default log file
> ```

---

## ⚙️ Advanced: `.tgptrc` Support

For a more streamlined setup, create a `~/.tgptrc` file to hold your defaults:

```bash
# ~/.tgptrc
export OPENAI_API_KEY="sk-..."
export MODEL="gpt-4"
export HISTORY_LOG="$HOME/.tgpt_history"
```

Then ensure `tgpt` sources this at startup by adding at the top of the script:

```bash
# Load user config if present
if [[ -f "$HOME/.tgptrc" ]]; then
  source "$HOME/.tgptrc"
fi
```

Now your environment is entirely managed through `~/.tgptrc`, and you can launch `tgpt` without extra flags.

---

## 📄 License & Security

* **No telemetry**: `tgpt` makes no external calls beyond OpenAI’s API.
* **Local logs**: All history is stored in a file you control.
* **Open Source**: Contributions welcome via GitHub.

---

© 2025 [BJL13 Enterprise Solutions](https://bjl13.org)
