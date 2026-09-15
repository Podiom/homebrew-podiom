class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.317"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.317/podiom_v0.1.317_darwin_arm64.tar.gz"
      sha256 "1ed06a135cbc450d198494bc7f4486a7653eeac9f449cf869c9e9c4b389205cb"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.317/podiom_v0.1.317_darwin_amd64.tar.gz"
      sha256 "88eca965ccc6f714d58980a839cdb84f281c4daa3fae6f47d4902c47d3ca9e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.317/podiom_v0.1.317_linux_arm64.tar.gz"
      sha256 "eaf3006ed5b6a614f83c163db84319e6b2dcb31aff8ebceacc51aea532c6edaf"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.317/podiom_v0.1.317_linux_amd64.tar.gz"
      sha256 "ce722603bdebb806d60c4bc882b1a10c7f5f20de215e1da3c6371fefbcbff536"
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
