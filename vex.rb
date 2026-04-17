# typed: false
  # frozen_string_literal: true

  class Vex < Formula
    desc "Beautiful terminal Excel and CSV viewer & editor with vim-style keybindings"
    homepage "https://github.com/CodeOne45/vex-tui"
    version "2.1.0"
    license "MIT"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/CodeOne45/vex-tui/releases/download/v2.1.0/vex-tui_2.1.0_darwin_amd64.tar.gz"
        sha256 "8e608492b4848eda53cb92ce3994b5702cf4997607631287fc299d53202d2412"

        def install
          bin.install "vex"
        end
      end
      if Hardware::CPU.arm?
        url "https://github.com/CodeOne45/vex-tui/releases/download/v2.1.0/vex-tui_2.1.0_darwin_arm64.tar.gz"
        sha256 "81290ac1d57057722b5ba35d78de3051e3dbbcf7c51a994bae007bfae4831750"

        def install
          bin.install "vex"
        end
      end
    end

    on_linux do
      if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
        url "https://github.com/CodeOne45/vex-tui/releases/download/v2.1.0/vex-tui_2.1.0_linux_amd64.tar.gz"
        sha256 "6ab22ba15d47e52f8b66ebd3211688b25fe4eb7d5176ecc6bee5540963657941"

        def install
          bin.install "vex"
        end
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/CodeOne45/vex-tui/releases/download/v2.1.0/vex-tui_2.1.0_linux_arm64.tar.gz"
        sha256 "98416890ddb65492d7980125a1b43b3628fb2aa9aa00f2a325230c701f7e29dc"

        def install
          bin.install "vex"
        end
      end
    end

    test do
      system "#{bin}/vex", "--version"
    end
  end
