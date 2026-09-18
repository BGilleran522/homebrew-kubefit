class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.1/kubefit-v0.1.1.zip"
    sha256 "bfd431b6a0aeacfb30247f9f688a87bfd48fe001496af0ffb193721be65f5151"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.1/kubefit-v0.1.1-linux-amd64.tar.gz"
    sha256 "6d9c15727626d6a2e80141cb57069cbca8f7a19a403ba0fb0f0a298b12f6be7f"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.1/kubefit-v0.1.1-linux-arm64.tar.gz"
    sha256 "506f39cd080944f153a34d84a6f2dcde8116b519b3074b0ecae9eff1bd59b712"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
