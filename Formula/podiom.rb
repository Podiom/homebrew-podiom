class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.350"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.350/podiom_v0.1.350_darwin_arm64.tar.gz"
      sha256 "a351c6d37f384f409ae0b09e3e9c12fb6dc8cff7ac9767a01bfbba81c427c770"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.350/podiom_v0.1.350_darwin_amd64.tar.gz"
      sha256 "6d5bdaf79e95c7f8be67b403242d708f2e4b364b75fd5546867daf8676217183"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.350/podiom_v0.1.350_linux_arm64.tar.gz"
      sha256 "f46a34daaccc52bf6aefee0d154f556f4b73854bd3997b2527ca06c6b32086de"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.350/podiom_v0.1.350_linux_amd64.tar.gz"
      sha256 "9e024f78cf5264afaae27541849c124e1a909d560447153bbea7445d630edd02"
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
