class Tgpt < Formula
  desc "A Termianl GPT-powered sysadmin Copilot REPL"
  homepage "https://github.com/bjl13/homebrew-gptcopilot"
  url "https://raw.githubusercontent.com/bjl13/homebrew-gptcopilot/main/tgpt"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  version "0.1.0"

  def install
    bin.install "tgpt"
  end
end
