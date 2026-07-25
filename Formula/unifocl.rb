class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.16.1"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.16.1/unifocl-3.16.1-macos-arm64.tar.gz"
  sha256 "e52a4b80ee1fd3e836e82c65e5b2f16bc360797f72333296674ca8956853afce"
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
