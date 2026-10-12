class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.14/kubefit-v0.1.14.zip"
    sha256 "0e01bbca1aec5302588720596efae3939bdf1079a2ef2f00afac237ca276c7a8"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.14/kubefit-v0.1.14-linux-amd64.tar.gz"
    sha256 "2bb70c4207cfda992224755f39ddd981e7e586ad9322b4e374cbae4fd1beb575"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.14/kubefit-v0.1.14-linux-arm64.tar.gz"
    sha256 "95629edb5fb241c6d61bd9b0f53c8a97e6d1225a5bd76cb7cb507342a335f93a"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
