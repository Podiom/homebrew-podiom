class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.344"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.344/podiom_v0.1.344_darwin_arm64.tar.gz"
      sha256 "92ae5cdc4856e53edb9927f44198a60862bf63a2de58ecd7abe93fe7e4dca15b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.344/podiom_v0.1.344_darwin_amd64.tar.gz"
      sha256 "0aaf0422f67aa94566e94a48192809487ff8776c219b4c629b136fe3e3bb9714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.344/podiom_v0.1.344_linux_arm64.tar.gz"
      sha256 "9dd1dcf74954810bc1d5e89c029383c9682d26cb451be743de70b343d081cc2d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.344/podiom_v0.1.344_linux_amd64.tar.gz"
      sha256 "b6ee63ba75387bd29c5be600d5569db8b92225965aa50a7af054065e2749fea8"
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
