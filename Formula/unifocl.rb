class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.14.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.14.0/unifocl-3.14.0-macos-arm64.tar.gz"
  sha256 "54b4428d21a90c89daf8ebc35761fc625a09a7909f95a36e6446b66c7cf50a77"
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
