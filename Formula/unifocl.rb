class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v1.2.0/unifocl-1.2.0-macos-arm64.tar.gz"
  sha256 "c351b2e5e421e2a0ac0684336a64cf518beab9ed1e24e882348a3d112b3ab48a"
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
