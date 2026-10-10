class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.374"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.374/podiom_v0.1.374_darwin_arm64.tar.gz"
      sha256 "70d619bad8a74f2ea60bd4783b53a3d064c3470ca45e1b58bdcd2d15565c72a3"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.374/podiom_v0.1.374_darwin_amd64.tar.gz"
      sha256 "64359fa36b18a0d2600860ce8f03bbd3c18205c297cc0a4f45837a9244029317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.374/podiom_v0.1.374_linux_arm64.tar.gz"
      sha256 "18c25169c296d263e2bc3d8571e32d48ecb5f467f2f7a9758b8a42e931ff9d6b"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.374/podiom_v0.1.374_linux_amd64.tar.gz"
      sha256 "458791fc52deccffb61a4d9096255abc2fd5532a4bfc3c87dc6613bbfdaebe54"
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
