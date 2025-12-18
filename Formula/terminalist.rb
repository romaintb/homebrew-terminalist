class Terminalist < Formula
  desc "A terminal-based Todoist client with modern TUI interface"
  homepage "https://github.com/romaintb/terminalist"
  url "https://github.com/romaintb/terminalist/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "a1c3afb03d36db05e961dc47a8e2a493d55cdd765e9a3810659aa14a5eef8aae"
  license "MIT"
  head "https://github.com/romaintb/terminalist.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      To get started with Terminalist:

      1. Get your Todoist API token from https://todoist.com/prefs/integrations
      2. Set the environment variable:
         export TODOIST_API_TOKEN=your_token_here
      3. (Optional) Generate a config file:
         terminalist --generate-config
      4. Run the application:
         terminalist
    EOS
  end

  test do
    system bin/"terminalist", "--help"
  end
end
