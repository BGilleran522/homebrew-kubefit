class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.9/kubefit-v0.1.9.zip"
    sha256 "40c86fdffd9abad39ba1b05bc76c3d1f8189491aca45d7cd3461e5eb4b7413ab"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.9/kubefit-v0.1.9-linux-amd64.tar.gz"
    sha256 "40e7fb1ebc9f8fd8b838adb45474c4761625271662643b0947a78b58b8e7d7f4"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.9/kubefit-v0.1.9-linux-arm64.tar.gz"
    sha256 "3b98fa2265b0e907e0483ff28786269217056de7d372da58fb81b35aeb2e3492"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
