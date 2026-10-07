class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.13/kubefit-v0.1.13.zip"
    sha256 "7779a27a4682c21ba98c7472374bb0ed5deebbeede431f6609fe8a681f8efea2"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.13/kubefit-v0.1.13-linux-amd64.tar.gz"
    sha256 "026f24755bac04aaf84bd98bddef45af96e582f52bbf7ff30c4ae87adcbe9258"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.13/kubefit-v0.1.13-linux-arm64.tar.gz"
    sha256 "9290dad3190afdc0066c5d9d90de1a1e8d8b69e1ba71570e6382008a1f5aee15"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
