class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.7/kubefit-v0.1.7.zip"
    sha256 "f90afa99ae94dedc506e69285bfb6e8b6c6b43722abf44daf9253db91d2dede9"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.7/kubefit-v0.1.7-linux-amd64.tar.gz"
    sha256 "35651c46c85ae045c643c40716243c383e3e0601219a357b4d6f3120f1907db9"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.7/kubefit-v0.1.7-linux-arm64.tar.gz"
    sha256 "f1d7f1294be3a8e812cf835d96b605676cd600c29e657793dcd76011ed9a5df9"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
