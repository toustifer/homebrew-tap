class ForgeCode < Formula
  desc "AI-powered multi-agent coding CLI — target decomposition to DAG to execution"
  homepage "https://hub.stifer.xyz"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/toustifer/opencode/releases/download/forge-code-v0.1.1/forge-code-darwin-arm64.tar.gz"
      sha256 "62faa5cf3fbe9383c3ad39de59b4a4214662a3356ff5a4fb11323b857b5c697f"
    end
    on_intel do
      url "https://github.com/toustifer/opencode/releases/download/forge-code-v0.1.1/forge-code-darwin-x64.tar.gz"
      sha256 "3c56dc5ca1fa20c96c59e3368ce7463e7639260cd625395e774ed23172082a31"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge", shell_output("#{bin}/forge --version")
  end
end
