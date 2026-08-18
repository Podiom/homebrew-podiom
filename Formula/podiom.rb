class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.194"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.194/podiom_v0.1.194_darwin_arm64.tar.gz"
      sha256 "c2e2834d01d3efdc8d831f1baafe4d6102ffbbbc158e2733fa9baaa9ae2ce35f"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.194/podiom_v0.1.194_darwin_amd64.tar.gz"
      sha256 "d7e324b575866785ed15eefed8239c8428299c041285c8fccd504b60fdcb35b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.194/podiom_v0.1.194_linux_arm64.tar.gz"
      sha256 "0c52e75c7f131c0bcfa7c0eef54c7d809fbd5bb57a380d5e36efcf678d26759e"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.194/podiom_v0.1.194_linux_amd64.tar.gz"
      sha256 "42ff0f19e33668bf80a71e9ae0f8b6038cc79c713266bccb4133dabc47e669cf"
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
