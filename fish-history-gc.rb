# This file was generated by GoReleaser. DO NOT EDIT.
class FishHistoryGc < Formula
  desc "CLI tool to Generate and insert markdown's table of contents"
  homepage "https://github.com/takaishi/fish-history-gc"
  version "0.0.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/takaishi/fish-history-gc/releases/download/v0.0.9/fish-history-gc_0.0.9_Darwin_x86_64.tar.gz"
    sha256 "c15909fe418a3f701f36f5cc3c91e80c6f18bc11bcf7e0498643a9a336a162a9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/takaishi/fish-history-gc/releases/download/v0.0.9/fish-history-gc_0.0.9_Linux_x86_64.tar.gz"
      sha256 "226e83d05bad44bf6a32fd3f3604e99781354b084586b682960d9a07b8f35076"
    end
  end

  def install
    bin.install Dir['fish-history-gc']
  end

  test do
    system "#{bin}/fish-history-gc"
  end
end
