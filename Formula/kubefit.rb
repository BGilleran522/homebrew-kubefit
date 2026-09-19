class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.6/kubefit-v0.1.6.zip"
    sha256 "e3fd0e7b8c354a492594df337e8d4a073fae515bcd77a0f8ed087cfcf6bf4eda"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.6/kubefit-v0.1.6-linux-amd64.tar.gz"
    sha256 "52eef8515715249e0a2e2d06f97bb3c10c8d6025922800f8d1073d240a3215cc"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.6/kubefit-v0.1.6-linux-arm64.tar.gz"
    sha256 "98c56dc188a9fec6a3e62d9f0191ba9019ae90f95b1433f06bf77be009287c8b"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
