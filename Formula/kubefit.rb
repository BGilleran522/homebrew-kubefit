class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.0/kubefit-v0.1.0.zip"
    sha256 "6763759ea160653ebb1f5be3587a52a8d79175346bd46065b7afa3c0756ede5d"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.0/kubefit-v0.1.0-linux-amd64.tar.gz"
    sha256 "cd0c486291aa002e49d6204703a7e2377ee21478ee9b904a6caab8c986e565fd"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.0/kubefit-v0.1.0-linux-arm64.tar.gz"
    sha256 "c44ef9e008164c4f4da1f1c8f9c4df99f3e764e51961e28924bf8ca2e8b28968"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
