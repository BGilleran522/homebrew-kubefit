class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"
  url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.0/kubefit-v0.1.0.zip"
  sha256 "6763759ea160653ebb1f5be3587a52a8d79175346bd46065b7afa3c0756ede5d"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
