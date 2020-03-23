class WatsonOverloaded < Formula
    include Language::Python::Virtualenv

    desc "Overloading of time-tracking tool watson"
    homepage "https://github.com/fhuitelec/watson-overloaded"
    url "https://github.com/fhuitelec/watson-overloaded/archive/v0.0.1.tar.gz"
    sha256 "b67f1936902a58ecf06a2c28c1c4c7ceda4b91e82dab50e4d4f7b8b20a734ae4"
    version "v0.0.1"
    head "https://github.com/fhuitelec/watson-overloaded.git"

    depends_on "python@3.8"

    def install
        venv = virtualenv_create(libexec, "python3")
        system libexec/"bin/pip", "install", "-v",
                                  "--ignore-installed", buildpath
        system libexec/"bin/pip", "uninstall", "-y", "watson-overloaded"
        venv.pip_install_and_link buildpath
      end

    test do
      system "which", "watson-overloaded"
    end
  end
