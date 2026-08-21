class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.218"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.218/podiom_v0.1.218_darwin_arm64.tar.gz"
      sha256 "f8cac0c3e56bdf7438792e8f30a18be037bc7d134c6949ac24c836551f20b8ea"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.218/podiom_v0.1.218_darwin_amd64.tar.gz"
      sha256 "ae865ee41f7def716f58ed10f8feb1751768c1082d358d4ebdef4c9569f6e650"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.218/podiom_v0.1.218_linux_arm64.tar.gz"
      sha256 "0885185dce96517059441e8c78d3db126b83dbe8b44f28ab02bda9d0990b6ee1"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.218/podiom_v0.1.218_linux_amd64.tar.gz"
      sha256 "a2af9bb60b9e6756166855187c69cef60fd5abd45c555a00396da8eeeee45d72"
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
