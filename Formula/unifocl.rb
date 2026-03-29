class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "2.15.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v2.15.0/unifocl-2.15.0-macos-arm64.tar.gz"
  sha256 "e7ac885bd95c60ace8f9a08fd76854b7aad878157fe6309a2e81e61cfb241822"
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
