class ForgeCode < Formula
  desc "AI-powered multi-agent coding CLI — target decomposition to DAG to execution"
  homepage "https://hub.stifer.xyz"
  url "https://github.com/toustifer/opencode/releases/download/forge-code-v0.1.0/forge-code-darwin-arm64.tar.gz"
  sha256 "c39acf39ed5fcb4710ffa7483d8df1c7eda91ea0d8de419d1baca6b8a4026262"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/toustifer/opencode/releases/download/forge-code-v0.1.0/forge-code-darwin-arm64.tar.gz"
      sha256 "c39acf39ed5fcb4710ffa7483d8df1c7eda91ea0d8de419d1baca6b8a4026262"
    end
    on_intel do
      url "https://github.com/toustifer/opencode/releases/download/forge-code-v0.1.0/forge-code-darwin-x64.tar.gz"
      sha256 "84e6b1b53a28a9ee1da9eae22487fef804fb30039190ba7c6938cf27c773112e"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge", shell_output("#{bin}/forge --version")
  end
end
