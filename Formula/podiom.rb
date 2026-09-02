class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.280"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.280/podiom_v0.1.280_darwin_arm64.tar.gz"
      sha256 "cf1355b6c3aee7a6c4f65df3eece6043144bb5578b1724a5ad23a512d5a90433"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.280/podiom_v0.1.280_darwin_amd64.tar.gz"
      sha256 "42eaad98e8bf0d6d92582436aa7ae6ae44f71e163092bc70519877c2efb5a160"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.280/podiom_v0.1.280_linux_arm64.tar.gz"
      sha256 "5c7f65bda1007d32bddb9a0e999defbdad3da13d28cb1c69e81a8fb49dc99a5f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.280/podiom_v0.1.280_linux_amd64.tar.gz"
      sha256 "6dbfdab65d484f2bdff6f68f591de5fd92148afb7ce2903a733de4eb64ac7f5f"
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
