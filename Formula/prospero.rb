class Prospero < Formula
  desc "Book tracker for humans and agents"
  homepage "https://prospero.study"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://downloads.prospero.study/cli/0.2.3/prospero-darwin-arm64.tar.gz"
      sha256 "10d5bac613fb93371fda416f43f1cc70f0d220c51a16316ceb670adc0d531832"
    end

    on_intel do
      url "https://downloads.prospero.study/cli/0.2.3/prospero-darwin-amd64.tar.gz"
      sha256 "67f8acf96e4e3d8092a625c4bd6d882eb7147c5d298047b76094501d758ae821"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.prospero.study/cli/0.2.3/prospero-linux-arm64.tar.gz"
      sha256 "c014fc969d5ea42c989c7609a75665da9dd075bf753fb9865d7a524671768aa7"
    end

    on_intel do
      url "https://downloads.prospero.study/cli/0.2.3/prospero-linux-amd64.tar.gz"
      sha256 "c44a25c5b573cf6d6e7ecd1afe0a1d1c40cac5a2c83f8f227c20226b1fd3e50c"
    end
  end

  def install
    bin.install "prospero"
  end

  test do
    ENV.delete("PROSPERO_API_URL")
    assert_match version.to_s, shell_output("#{bin}/prospero --version")
    system bin/"prospero", "config", "set", "api-url", "https://example.com/"
    assert_equal "https://example.com\n", shell_output("#{bin}/prospero config get api-url")
  end
end
