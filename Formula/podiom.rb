class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.367"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.367/podiom_v0.1.367_darwin_arm64.tar.gz"
      sha256 "5a2e800f7fba8fc779ffdc32ccee6c8c42204a982a9cf2b89f806b0b17961c7c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.367/podiom_v0.1.367_darwin_amd64.tar.gz"
      sha256 "817df533053591f7afb18a332a9d858d7105e68a0d143277fa8d26180e921e8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.367/podiom_v0.1.367_linux_arm64.tar.gz"
      sha256 "0927d8d61e287816041ebf7f2aea99c8881770c7c820d2bd99f60b47ec2fe72c"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.367/podiom_v0.1.367_linux_amd64.tar.gz"
      sha256 "71be06625ef482062fc59f6c9e5d8eb207ef9d3299b9d2df0e1c95a76d112864"
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
