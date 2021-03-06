require 'formula'

class I586ElfBinutils < Formula
  homepage 'http://gcc.gnu.org'
  url 'http://ftp.gnu.org/gnu/binutils/binutils-2.23.tar.gz'
  sha1 '470c388c97ac8d216de33fa397d7be9f96c3fe04'

  depends_on 'gcc48' => :build

  def install
    ENV['CC'] = '/usr/local/bin/gcc-4.8'
    ENV['CXX'] = '/usr/local/bin/g++-4.8'
    ENV['CPP'] = '/usr/local/bin/cpp-4.8'
    ENV['LD'] = '/usr/local/bin/gcc-4.8'

    mkdir 'build' do
      system '../configure', '--disable-nls', '--target=i586-elf',
                             "--prefix=#{prefix}",
                             '--disable-werror'
      system 'make all'
      system 'make install'
      FileUtils.mv lib, libexec
    end
  end

end
