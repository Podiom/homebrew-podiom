class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.220"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.220/podiom_v0.1.220_darwin_arm64.tar.gz"
      sha256 "c52df7f071cd92a8dbed2bfc8765432d7c0c532f831d18aecbdb7042152bbefa"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.220/podiom_v0.1.220_darwin_amd64.tar.gz"
      sha256 "c9707633eddf28ed1c1539b189424955ca6f428c5c11a39dd7f6e108cea6ad71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.220/podiom_v0.1.220_linux_arm64.tar.gz"
      sha256 "0f9f48b31a8f984086841289cf6adda86e40983a7a3a8951561adb1b3115231f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.220/podiom_v0.1.220_linux_amd64.tar.gz"
      sha256 "e63b73cd7e27057247cfc36580f5f9b183cec8858a6579672804839490a64970"
    end
  end

  def install
    bin.install "podiom"
    bin.install "podiomd"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/podiom --version")
    assert_match "v#{version}", shell_output("#{bin}/podiomd --version")
  end
end
