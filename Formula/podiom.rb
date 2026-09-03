class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.283"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.283/podiom_v0.1.283_darwin_arm64.tar.gz"
      sha256 "029a7d6877fb76c2fc48d34f8482ac16836d8155fdab15bf2c60d838a9a24f4e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.283/podiom_v0.1.283_darwin_amd64.tar.gz"
      sha256 "84cb5be4c868d8576ddd4dcb83866cbbabdc2535b0f9c27a3a3c3ca0680089f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.283/podiom_v0.1.283_linux_arm64.tar.gz"
      sha256 "1bddb92fbd84204faeeb5e7d53377f28973f886f8a814de8c4621abc56a8915b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.283/podiom_v0.1.283_linux_amd64.tar.gz"
      sha256 "2758167f3172f6b880ea9281a46bd4f1e9f290ea156df6fd8e7f5f36dd09c332"
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
