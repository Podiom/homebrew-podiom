class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.422"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.422/podiom_v0.1.422_darwin_arm64.tar.gz"
      sha256 "c92437a5d2fe4613cd6eae969e48e2c48c69d90fcba9aa5c0472447ecbebf9d9"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.422/podiom_v0.1.422_darwin_amd64.tar.gz"
      sha256 "03238297e8137e1fd607b55cdfbacb65435eaca9075b4e16fb4faf6864e7052b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.422/podiom_v0.1.422_linux_arm64.tar.gz"
      sha256 "ec37bc5b4e862979da10597baee9043902805bf389ef66f9da76e6bf610a5768"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.422/podiom_v0.1.422_linux_amd64.tar.gz"
      sha256 "bc61355e5c2b796e55e05197d8bc3b3179aac35aa4ca03c1cdc562805d0b1dfa"
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
