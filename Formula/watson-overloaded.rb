class WatsonOverloaded < Formula
    desc "Overloading of time-tracking tool watson"
    homepage "https://github.com/fhuitelec/watson-overloaded"
    url "https://github.com/fhuitelec/watson-overloaded/archive/v0.0.1.tar.gz"
    sha256 "a540d00a43d7750f108c37c6648dc47c7baafbcbcc2bff229927a3fc6164cd99"
    version "v0.0.1"
    head "https://github.com/fhuitelec/watson-overloaded.git"

    depends_on "python@3"

    def install
        venv = virtualenv_create(libexec)
        system libexec/"bin/pip", "install", "-v",
                                  "--ignore-installed", buildpath
        system libexec/"bin/pip", "uninstall", "-y", "watson-overload"
        venv.pip_install_and_link buildpath
      end

    test do
      system "which", "watson-overload"
    end
  end
