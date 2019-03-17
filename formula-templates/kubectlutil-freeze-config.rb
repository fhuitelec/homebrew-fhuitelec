class KubectlutilFreezeConfig < Formula
    desc "Kubernetes configuration tool to freeze & unfreeze contexts on a specific TTY"
    homepage "https://github.com/fhuitelec/kubectl-tools"
    url "https://github.com/fhuitelec/kubectl-tools/archive/${FORMULA_VERSION}.tar.gz"
    sha256 "${SHA_SUM}"
    version "${FORMULA_VERSION}"
    head "https://github.com/fhuitelec/kubectl-tools.git"

    depends_on "kubernetes-cli" => :optional
    depends_on "blendle/blendle/kns" => :optional

    def install
      bin.install "bin/kubectlutil-freeze-config"
      prefix.install "helpers"
    end

    test do
      system "which", "kubectlutil-freeze-config"
    end
  end
