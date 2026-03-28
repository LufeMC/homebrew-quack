class Quack < Formula
  desc "Zero-config bug detection for your CI"
  homepage "https://github.com/LufeMC/quack"
  url "https://registry.npmjs.org/@quack/cli/-/cli-0.1.0.tgz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quack --version")
  end
end
