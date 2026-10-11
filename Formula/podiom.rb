class Podiom < Formula
  desc "Thin orchestration layer for local LLM agents"
  homepage "https://github.com/Podiom/Podiom"
  version "0.1.377"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.377/podiom_v0.1.377_darwin_arm64.tar.gz"
      sha256 "0c79dbd28bdd832244c3c64ebe9148b68ff172037095c7c61812c49de230f7ee"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.377/podiom_v0.1.377_darwin_amd64.tar.gz"
      sha256 "d1cac17822250c26a19a8b59e5906b8c562f99efad2bb014ad5a1fd1b308109b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.377/podiom_v0.1.377_linux_arm64.tar.gz"
      sha256 "cbdfbf8b8405aba45f9ff06278484c945dd4f2d5ceba5dae05011dce73a08d66"
    end

    on_intel do
      url "https://github.com/Podiom/Podiom/releases/download/v0.1.377/podiom_v0.1.377_linux_amd64.tar.gz"
      sha256 "8b8ab2eff87bd737303b40273a4674867891171ead97a8aed81937cd0871662c"
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
