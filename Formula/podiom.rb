class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.399"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.399/podiom_v0.1.399_darwin_arm64.tar.gz"
      sha256 "72f8db8c8ac5bab79af138e0298863cbcd19483311c2b0331ce1853dd6363a28"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.399/podiom_v0.1.399_darwin_amd64.tar.gz"
      sha256 "038af6795a04582246f1e9d396c47fa17b42ea6b90d5c2ff72a640f0902d9618"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.399/podiom_v0.1.399_linux_arm64.tar.gz"
      sha256 "8e502572808cbcec0d033920b0f5b95e5175b1202f32b5df77f5c464e9009efb"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.399/podiom_v0.1.399_linux_amd64.tar.gz"
      sha256 "4064cda0a710912bbba0f787d44abd27c4bc733139ce439868816b55e6131a04"
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
