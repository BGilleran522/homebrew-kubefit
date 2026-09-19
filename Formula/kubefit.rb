class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.3/kubefit-v0.1.3.zip"
    sha256 "9397c3317f163dccdc967e2279eec10bc337a61b6c3e421a549af7b019aee8bc"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.3/kubefit-v0.1.3-linux-amd64.tar.gz"
    sha256 "164c8703a6f88fe715b015b323ec7eaf699a047459f07879604fe9f317ae3aa7"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.3/kubefit-v0.1.3-linux-arm64.tar.gz"
    sha256 "9b5f21233a4c2abfaa25703355bfdca3073bc31910b729f4da9a795e669954d1"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
