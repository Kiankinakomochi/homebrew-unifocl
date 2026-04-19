class Unifocl < Formula
  desc "Terminal-first Unity development companion"
  homepage "https://github.com/Kiankinakomochi/unifocl"
  version "3.15.0"
  url "https://github.com/Kiankinakomochi/unifocl/releases/download/v3.15.0/unifocl-3.15.0-macos-arm64.tar.gz"
  sha256 "557b8c5dbc7bdd66da21ec638de6fca94a8396a5fbaf1d86922d10863a4e89ae"
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
