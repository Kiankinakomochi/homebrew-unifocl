class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.1.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.1.0/unifocl-3.1.0-macos-arm64.tar.gz"
  sha256 "c22abeab10cf6addfc594157f93cefcf97c538314cb7715bfbb402ab6de64540"
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
