task checkerTask {
  File inputFile
  String expectedMd5sum

  command {
    /bin/check_md5sum --input-file ${inputFile} --md5 ${expectedMd5sum}
  }

  runtime {
    docker: "quay.io/agduncan94/checker-md5sum"
  }
  
  meta {
    author: "Funk it Souza Falooza"
    email: "not-all-that-broken@gmail.com"
    description: "This is Athens"
  }
}
