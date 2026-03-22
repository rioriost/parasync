class Parasync < Formula
  include Language::Python::Virtualenv

  desc "parasync is a parallelized rsync tool written in Python."
  homepage "https://github.com/rioriost/parasync"
  url "https://github.com/rioriost/parasync/releases/download/0.1.8/parasync-0.1.8.tar.gz"
  sha256 "0ada4337f466e38df32c0d622a0dcb97d9e6703c175cddd41e8be4ee941bd041"
  license "MIT"

  depends_on "python@3.13"
  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/c6/d1ddf4abb55e93cebc4f2ed8b5d6dbad109ecb8d63748dd2b20ab5e57ebe/psutil-7.2.2.tar.gz"
    sha256 "0746f5f8d406af344fd547f1c8daa5f5c33dbc293bb8d6a16d80b4bb88f59372"
  end

  def install
    cd "." do
      virtualenv_install_with_resources
    end
  end

  test do
    system "#{bin}/parasync", "--help"
  end
end
