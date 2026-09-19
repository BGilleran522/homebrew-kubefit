class Kubefit < Formula
  desc "Timed, graded Kubernetes and Linux drills on your own machine"
  homepage "https://app.kubefit.com"

  if OS.mac?
    # Universal: one archive covers Apple silicon and Intel.
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.4/kubefit-v0.1.4.zip"
    sha256 "140c91152b4ee37922158767ecf30c756de4230753ea4ddc90ad75b7c8b85b8a"
  elsif Hardware::CPU.intel?
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.4/kubefit-v0.1.4-linux-amd64.tar.gz"
    sha256 "4536fce665966a6f180cf26cc30093d4263225b88746058f9b84d72101c0cf17"
  else
    url "https://github.com/BGilleran522/homebrew-kubefit/releases/download/v0.1.4/kubefit-v0.1.4-linux-arm64.tar.gz"
    sha256 "561cc43ddf02e9ce37f64b78711463a7cc2b46792264ebec302a3e65d1cd8471"
  end

  def install
    bin.install "kubefit"
  end

  test do
    assert_match "kubefit", shell_output("#{bin}/kubefit version")
  end
end
