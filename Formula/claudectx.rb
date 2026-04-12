class Claudectx < Formula
  desc "Reduce Claude Code token usage by up to 80%"
  homepage "https://github.com/Horilla/claudectx"
  url "https://registry.npmjs.org/claudectx/-/claudectx-1.1.4.tgz"
  sha256 "f5e778bd0ed948ed46d7a53ab4ff40cd6b3aa471e34f65134fd96a728d58f09f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.1.4", shell_output("#{bin}/claudectx --version")
  end
end
