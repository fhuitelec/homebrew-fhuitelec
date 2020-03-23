class WatsonOverloaded < Formula
    desc "Overloading of time-tracking tool watson"
    homepage "https://github.com/fhuitelec/watson-overloaded"
    url "https://github.com/fhuitelec/watson-overloaded/archive/${FORMULA_VERSION}.tar.gz"
    sha256 "${SHA_SUM}"
    version "${FORMULA_VERSION}"
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
