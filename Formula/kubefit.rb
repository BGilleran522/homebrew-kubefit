class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.5/kubefit-v0.1.5.zip"
    sha256 "84c4fa2b076f3b7ff110e95b8a1143693676d2c0da34d00c4cce91ed35b6f474"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.5/kubefit-v0.1.5-linux-amd64.tar.gz"
    sha256 "127f0ca1bceb5fc2a6af26eca82aa8dc6c64291d6f1e03f0470fa0a51bfdd436"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.5/kubefit-v0.1.5-linux-arm64.tar.gz"
    sha256 "c0a7755a64cf4bd8f5dba3830be314990d676106a35694bf1812637f43aa859d"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
