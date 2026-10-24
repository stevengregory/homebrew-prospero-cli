class Prospero < Formula
  desc "Book tracker for humans and agents"
  homepage "https://prospero.study"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://downloads.prospero.study/cli/0.2.4/prospero-darwin-arm64.tar.gz"
      sha256 "f667fbb60951e1c44c484959833d1e271d338674d27bdef40beb432ab0f9cca7"
    end

    on_intel do
      url "https://downloads.prospero.study/cli/0.2.4/prospero-darwin-amd64.tar.gz"
      sha256 "de373ec266a59dac4d76556c7fec03d85e6546bcbdfeb99eda5ebf7f35915b48"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.prospero.study/cli/0.2.4/prospero-linux-arm64.tar.gz"
      sha256 "44decd73a9ff69f262e8a477782d85ab97003bb9a159dfbffc977ba81bd48d83"
    end

    on_intel do
      url "https://downloads.prospero.study/cli/0.2.4/prospero-linux-amd64.tar.gz"
      sha256 "03ad9291b25258a9cdeb531e0a9ca5d7b60223baf92fed80ff88c267d5af7e82"
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
