class Odbc2parquet < Formula
    desc "Query an ODBC data source and store the result in a Parquet file."
    homepage "https://github.com/pacman82/odbc2parquet"
    url "https://github.com/pacman82/odbc2parquet/archive/v0.5.1.tar.gz"
    sha256 "d0df1f6ce71c926a2e72053c8bf25df1e8f7ccf2b802530ac17d58b3ba3c9f51"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", "--root", prefix, "--path", "."
    end
  
    test do
      shell_output("#{bin}/odbc2parquet --list-drivers").strip
    end
  end