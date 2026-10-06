class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.368"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.368/podiom_v0.1.368_darwin_arm64.tar.gz"
      sha256 "a445e8dacb14ee3010b0786329e9d2cfa39eb5523390a2dba0c2575225cee051"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.368/podiom_v0.1.368_darwin_amd64.tar.gz"
      sha256 "3663db3f39b845b9eaf2431b88ce7feac42a3f17aaaaeedeb8a4651e47df3827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.368/podiom_v0.1.368_linux_arm64.tar.gz"
      sha256 "15db1a08b47ee837b6366082a54876ab6839bef312e59cd8ab2ba48eeac4a9a5"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.368/podiom_v0.1.368_linux_amd64.tar.gz"
      sha256 "9eee1e8de040bd61a0e4cfc90f4b308da15f6ae4a67607c1317a1bc8ee4fe8fd"
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
