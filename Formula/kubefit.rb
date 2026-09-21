class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.10/kubefit-v0.1.10.zip"
    sha256 "dcdd454c36eb0cb27a5219b6e795f3c960306c81c19078802774983251256878"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.10/kubefit-v0.1.10-linux-amd64.tar.gz"
    sha256 "f3606bffd2ff318ddb0c13dfecf020b82c88f0bf46a7cce4e3000392a11b013a"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.10/kubefit-v0.1.10-linux-arm64.tar.gz"
    sha256 "d39c6f33a05d16f86df9c553da4443c2ba9bc4d3553982535f210c741f995792"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
