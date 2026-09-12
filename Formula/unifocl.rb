class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.17.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.17.1/unifocl-3.17.1-macos-arm64.tar.gz"
  sha256 "b9fa03a5aff86f102290aef6fa2ccf7b7793255e7bd25af94e8ac0c7de3ac839"
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
