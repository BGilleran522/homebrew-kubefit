class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.11/kubefit-v0.1.11.zip"
    sha256 "a7ca4403b7a0c0079c173b8bca74fa5582c2e78279ea5d77ed8cdbf6babf6eec"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.11/kubefit-v0.1.11-linux-amd64.tar.gz"
    sha256 "758a709867abbb929c2a0a9de5c0138146c0bc37b2e82f427c00347fd23c9052"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.11/kubefit-v0.1.11-linux-arm64.tar.gz"
    sha256 "3b7ec4fd6e7501dcfca2a76ade5010f553f259bca3627b445de48fb166e1222c"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
