class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.348"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.348/podiom_v0.1.348_darwin_arm64.tar.gz"
      sha256 "84fa72aa21b4f1d0a38f27e616a7cd82a8ef89a79d05dd8186a1c7a8c2fa7bf3"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.348/podiom_v0.1.348_darwin_amd64.tar.gz"
      sha256 "c67820906334cd239e9489de86ef156425ca15633c7a6a11bba7035784d17620"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.348/podiom_v0.1.348_linux_arm64.tar.gz"
      sha256 "d56c4fdb59040f600a5976669f29a0bd773f63f2fb1286c32e74d1a0bf495031"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.348/podiom_v0.1.348_linux_amd64.tar.gz"
      sha256 "4e6635d3306ef23cf6d9f837813219faae43e4a1c519013264038e1fca7aa545"
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
