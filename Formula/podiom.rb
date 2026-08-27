class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.255"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.255/podiom_v0.1.255_darwin_arm64.tar.gz"
      sha256 "3c2aa908ce13b14fb5bd85d87b09e211e4dfa56421adad84d2e54122706aae5a"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.255/podiom_v0.1.255_darwin_amd64.tar.gz"
      sha256 "bd17a3a7a5f6a318ee71582746d6bae74fbca1359582984bc637f3eba3aa5bd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.255/podiom_v0.1.255_linux_arm64.tar.gz"
      sha256 "1b932bbfb5d5d136a8eab7a2b0a4885505b59021305440d11c359cdd17a2527d"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.255/podiom_v0.1.255_linux_amd64.tar.gz"
      sha256 "ed59c0346f915d7caec15ca96c28e77634955ab95685cb138db4c18ef9ba3d13"
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
