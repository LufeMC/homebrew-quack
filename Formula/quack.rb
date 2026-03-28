class Quack < Formula
  desc "Zero-config bug detection for your CI"
  homepage "https://github.com/LufeMC/quack"
  url "https://registry.npmjs.org/quackdev/-/quackdev-0.1.0.tgz"
  sha256 "f212394443eb8a555d9289191b2370e8b6a89c2683519de0cfe02ff996a30b94"
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
