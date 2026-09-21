class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.12/kubefit-v0.1.12.zip"
    sha256 "38aad4d26c5678d1639561aacdfc2dc255d6bb0ff30c0d170a443a6c00e2b324"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.12/kubefit-v0.1.12-linux-amd64.tar.gz"
    sha256 "625da42b4e502e875e9ed8069ced31f2b7b8623066944d5a8fbed0dfbb22a69c"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.12/kubefit-v0.1.12-linux-arm64.tar.gz"
    sha256 "3d92dac848b2c6f08407f4652d0f74687e0352b319389582502a8f5aae80761c"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
