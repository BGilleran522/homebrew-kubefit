class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.2/kubefit-v0.1.2.zip"
    sha256 "e8d8aca1ce4adad8e45f6ee7d99f2d439804ff7b026128587e8a8b354b8732c6"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.2/kubefit-v0.1.2-linux-amd64.tar.gz"
    sha256 "eb24711dfac7d0ca18946a54698463880ef118d5a6d4e14c0560c15504560d92"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.2/kubefit-v0.1.2-linux-arm64.tar.gz"
    sha256 "e614a909361a557fad227d0dd1323632441a3b004d4bd4267b8c3fafafa46915"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
