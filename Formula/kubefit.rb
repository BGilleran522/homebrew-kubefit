class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.8/kubefit-v0.1.8.zip"
    sha256 "deb31a6ad1e162224863fc6b8b836ad8bc7edc878d37b2f2bae7fcfd0fcd953c"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.8/kubefit-v0.1.8-linux-amd64.tar.gz"
    sha256 "070162e3be85d405272636e9c2054cbc6d391f9ee04fe540703a001aef289f2f"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.8/kubefit-v0.1.8-linux-arm64.tar.gz"
    sha256 "0a75846d19cc8696dc248ba48f0a724c9ffcfac88723d3be3419b648dc30756f"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
