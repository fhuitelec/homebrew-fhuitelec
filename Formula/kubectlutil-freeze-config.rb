class KubectlutilFreezeConfig < Formula
    desc "Kubernetes configuration tool to freeze & unfreeze contexts on a specific TTY"
    homepage "https://github.com/fhuitelec/kubectl-tools"
    url "https://github.com/fhuitelec/kubectl-tools/archive/0.1.0.tar.gz"
    sha256 "8330903e64944947ac42079670787af7cd627e55b93935aad1b10cc88606bb23"
    version "0.1.0"
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
