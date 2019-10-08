# This file was generated by GoReleaser. DO NOT EDIT.
class Kelm < Formula
  desc "CLI tool to Generate and insert markdown's table of contents"
  homepage "https://github.com/takaishi/kelm"
  version "0.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/takaishi/kelm/releases/download/v0.0.5/kelm_0.0.5_Darwin_x86_64.tar.gz"
    sha256 "c273bd1f741d6e34ad6e1fdf05260bf6c72396447a6cf90bf893ba07e3a322c2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/takaishi/kelm/releases/download/v0.0.5/kelm_0.0.5_Linux_x86_64.tar.gz"
      sha256 "ad7b555ba27d5b9314f86c031bb66ddf2b7219a59eb0e39200921f3552288221"
    end
  end

  def install
    bin.install Dir['kelm']
  end

  test do
    system "#{bin}/kelm"
  end
end
