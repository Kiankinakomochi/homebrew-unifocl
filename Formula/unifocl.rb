class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.8.10"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.8.10/unifocl-3.8.10-macos-arm64.tar.gz"
  sha256 "fb8bb906264eff65ae798492c71d460c872f375be9496e48468f2476f1e1ce75"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"unifocl"
  end

  test do
    output = shell_output("#{bin}/unifocl exec \"/version\" --agentic --format json")
    assert_match '"status":"success"', output
  end
end
