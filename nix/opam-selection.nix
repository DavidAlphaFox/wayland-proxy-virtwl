### This file is generated by opam2nix.

self:
let
    lib = self.lib;
    pkgs = self.pkgs;
    repoPath = self.repoPath;
    repos = 
    {
      opam-repository = 
      rec {
        fetch = 
        {
          owner = "ocaml";
          repo = "opam-repository";
          rev = "7c396b25fe7954503325bd8f183d080d226dc202";
          sha256 = "04s7vywhbl1c0ifflrv38s50sj4h7vhs55vyx4iihd6mcywy6xk3";
        };
        src = (pkgs.fetchFromGitHub) fetch;
      };
    };
    selection = self.selection;
in
{
  format-version = 4;
  ocaml-version = "4.10.0";
  repos = repos;
  selection = 
  {
    base-bytes = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlfind = selection.ocamlfind;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0a68lmbf68jgm1i3b59j2sc3ha9yhv4678f9mfwwvczw88prq7l3";
        package = "packages/base-bytes/base-bytes.base";
      };
      pname = "base-bytes";
      src = null;
      version = "base";
    };
    base-threads = 
    {
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1c4bpyh61ampjgk5yh3inrgcpf1z1xv0pshn54ycmpn4dyzv0p2x";
        package = "packages/base-threads/base-threads.base";
      };
      pname = "base-threads";
      src = null;
      version = "base";
    };
    base-unix = 
    {
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0mpsvb7684g723ylngryh15aqxg3blb7hgmq2fsqjyppr36iyzwg";
        package = "packages/base-unix/base-unix.base";
      };
      pname = "base-unix";
      src = null;
      version = "base";
    };
    bigarray-compat = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:04frgyb1gmlfjni3dj1zkfsrsw1j6iq13b1k8w7w6ljhxr007wsn";
        package = "packages/bigarray-compat/bigarray-compat.1.0.0";
      };
      pname = "bigarray-compat";
      src = pkgs.fetchurl 
      {
        sha256 = "1bpmmnxb1yx72aqlbdaqfl18rgz1cq9cf6cqvnfl88mz5dfr4x0d";
        url = "https://github.com/mirage/bigarray-compat/archive/v1.0.0.tar.gz";
      };
      version = "1.0.0";
    };
    cmdliner = 
    {
      opamInputs = {
                     ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:05qlm4yp6124w2z10dpdchldfrmgmcr6h31rnxp8qs8mk0xzx48z";
        package = "packages/cmdliner/cmdliner.1.0.4";
      };
      pname = "cmdliner";
      src = pkgs.fetchurl 
      {
        sha256 = "1h04q0zkasd0mw64ggh4y58lgzkhg6yhzy60lab8k8zq9ba96ajw";
        url = "http://erratique.ch/software/cmdliner/releases/cmdliner-1.0.4.tbz";
      };
      version = "1.0.4";
    };
    conf-m4 = 
    {
      buildInputs = [ (pkgs.m4) ];
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1jlhg718lz35jyr5w0sgvg5ycplhnd8653rc4980yci8p3z1vlxs";
        package = "packages/conf-m4/conf-m4.1";
      };
      pname = "conf-m4";
      src = null;
      version = "1";
    };
    cppo = 
    {
      opamInputs = 
      {
        base-unix = selection.base-unix;
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1kga0i21r60914qcjnxaxx03p6vj476j4sgcfnndcawycsip8zix";
        package = "packages/cppo/cppo.1.6.7";
      };
      pname = "cppo";
      src = pkgs.fetchurl 
      {
        sha256 = "17ajdzrnmnyfig3s6hinb56mcmhywbssxhsq32dz0v90dhz3wmfv";
        url = "https://github.com/ocaml-community/cppo/releases/download/v1.6.7/cppo-v1.6.7.tbz";
      };
      version = "1.6.7";
    };
    csexp = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
        result = selection.result;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1wi05gfxxhg8i2i2mdgigqq0cxc3dizxzr7j6729mq4mfb06gpxx";
        package = "packages/csexp/csexp.1.4.0";
      };
      pname = "csexp";
      src = pkgs.fetchurl 
      {
        sha256 = "0kinvwzbylcx2ky8s8a7ki1i0vql1lm2mdz8vqka20pihz56ygcf";
        url = "https://github.com/ocaml-dune/csexp/releases/download/1.4.0/csexp-1.4.0.tbz";
      };
      version = "1.4.0";
    };
    cstruct = 
    {
      opamInputs = 
      {
        bigarray-compat = selection.bigarray-compat;
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0y9yd5sf5bpmnf36259il1asr1gmy2wkrfzd7wc0yzrnzy6fji79";
        package = "packages/cstruct/cstruct.6.0.0";
      };
      pname = "cstruct";
      src = pkgs.fetchurl 
      {
        sha256 = "0xi6cj85z033fqrqdkwac6gg07629vzdhx03c3lhiwwc4lpnv8bq";
        url = "https://github.com/mirage/ocaml-cstruct/releases/download/v6.0.0/cstruct-v6.0.0.tbz";
      };
      version = "6.0.0";
    };
    dune = 
    {
      opamInputs = 
      {
        base-threads = selection.base-threads;
        base-unix = selection.base-unix;
        ocaml = selection.ocaml or null;
        ocamlfind-secondary = selection.ocamlfind-secondary or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1nifrwp9g1d9rxj184vvvldgm1151h28pmsnzfagxp0gj53pni64";
        package = "packages/dune/dune.2.8.2";
      };
      pname = "dune";
      src = pkgs.fetchurl 
      {
        sha256 = "07mf6pnmv1a6wh4la45zf6cn6qy2vcmz4xgx0djj75kw1wiyii72";
        url = "https://github.com/ocaml/dune/releases/download/2.8.2/dune-2.8.2.tbz";
      };
      version = "2.8.2";
    };
    dune-configurator = 
    {
      opamInputs = 
      {
        csexp = selection.csexp;
        dune = selection.dune;
        ocaml = selection.ocaml;
        result = selection.result;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:18li0h84pnx743h6gn3gry7ygm3b7wnvmsvdjl71z5zm1qvfirlr";
        package = "packages/dune-configurator/dune-configurator.2.8.2";
      };
      pname = "dune-configurator";
      src = pkgs.fetchurl 
      {
        sha256 = "07mf6pnmv1a6wh4la45zf6cn6qy2vcmz4xgx0djj75kw1wiyii72";
        url = "https://github.com/ocaml/dune/releases/download/2.8.2/dune-2.8.2.tbz";
      };
      version = "2.8.2";
    };
    fmt = 
    {
      opamInputs = 
      {
        base-unix = selection.base-unix or null;
        cmdliner = selection.cmdliner or null;
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
        seq = selection.seq;
        stdlib-shims = selection.stdlib-shims;
        topkg = selection.topkg;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1lvq50p7a5i59jqkn4zijxm9p92c6phi20akdj3qbmlnjn8lqs7h";
        package = "packages/fmt/fmt.0.8.9";
      };
      pname = "fmt";
      src = pkgs.fetchurl 
      {
        sha256 = "0gkkkj4x678vxdda4xaw2dd44qjacavsvn5nx8gydfwah6pjbkxk";
        url = "https://erratique.ch/software/fmt/releases/fmt-0.8.9.tbz";
      };
      version = "0.8.9";
    };
    logs = 
    {
      opamInputs = 
      {
        base-threads = selection.base-threads or null;
        cmdliner = selection.cmdliner or null;
        fmt = selection.fmt or null;
        js_of_ocaml = selection.js_of_ocaml or null;
        lwt = selection.lwt or null;
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
        topkg = selection.topkg;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1k797gb7f2s1hlqyqsq2xyq9gm20l5q2iwh26bs44f3bp3gklg1a";
        package = "packages/logs/logs.0.7.0";
      };
      pname = "logs";
      src = pkgs.fetchurl 
      {
        sha256 = "1jnmd675wmsmdwyb5mx5b0ac66g4c6gpv5s4mrx2j6pb0wla1x46";
        url = "https://erratique.ch/software/logs/releases/logs-0.7.0.tbz";
      };
      version = "0.7.0";
    };
    lwt = 
    {
      buildInputs = [ (pkgs.unzip) ];
      opamInputs = 
      {
        base-threads = selection.base-threads or null;
        base-unix = selection.base-unix or null;
        conf-libev = selection.conf-libev or null;
        cppo = selection.cppo;
        dune = selection.dune;
        dune-configurator = selection.dune-configurator;
        mmap = selection.mmap;
        ocaml = selection.ocaml;
        ocaml-syntax-shims = selection.ocaml-syntax-shims or null;
        ocplib-endian = selection.ocplib-endian;
        result = selection.result;
        seq = selection.seq;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0wmyy72ycwrhy9nab9nfbii70irvz2mp89i6nl5f58nba947rrdj";
        package = "packages/lwt/lwt.5.4.0";
      };
      pname = "lwt";
      src = pkgs.fetchurl 
      {
        sha256 = "1lv5i3znmiqx6fiq2q1lapsq1bk20bgw7h57wmk9czx9x050a5n5";
        url = "https://github.com/ocsigen/lwt/archive/5.4.0.zip";
      };
      version = "5.4.0";
    };
    mmap = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0mjn2jxrfwlrzppjnc6pg47ncm0ri6a1hn3kj2yz10rmpca25bsm";
        package = "packages/mmap/mmap.1.1.0";
      };
      pname = "mmap";
      src = pkgs.fetchurl 
      {
        sha256 = "0l6waidal2n8mkdn74avbslvc10sf49f5d889n838z03pra5chsc";
        url = "https://github.com/mirage/mmap/releases/download/v1.1.0/mmap-v1.1.0.tbz";
      };
      version = "1.1.0";
    };
    ocaml = 
    {
      opamInputs = 
      {
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
        ocaml-config = selection.ocaml-config;
        ocaml-system = selection.ocaml-system or null;
        ocaml-variants = selection.ocaml-variants or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1j9xgxnbgzrar4rwynm7jd0bi3f5qwwkgyxvk1pd8iazvn81pgya";
        package = "packages/ocaml/ocaml.4.10.0";
      };
      pname = "ocaml";
      src = null;
      version = "4.10.0";
    };
    ocaml-base-compiler = 
    {
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1j4623nkx2jwgmx689m5z4i3i6fkqgk0m5jq8hqzi89gxmsnqb9x";
        package = "packages/ocaml-base-compiler/ocaml-base-compiler.4.10.0";
      };
      pname = "ocaml-base-compiler";
      src = pkgs.fetchurl 
      {
        sha256 = "0fdw4abyp37q7acqaqawy64gakpg7xckw5ssfpn8dbwxlzqf1fjq";
        url = "https://github.com/ocaml/ocaml/archive/4.10.0.tar.gz";
      };
      version = "4.10.0";
    };
    ocaml-config = 
    {
      opamInputs = 
      {
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-variants = selection.ocaml-variants or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1gc3pyhb64j8a91bgbpy9fzljpb1ps2ylgw31ldx879vdkk46nhp";
        package = "packages/ocaml-config/ocaml-config.1";
      };
      pname = "ocaml-config";
      src = null;
      version = "1";
    };
    ocamlbuild = 
    {
      opamInputs = {
                     ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0hrzb4fgz7qh7cr65j5yq6fai82fhyl6bp8s9pwcj1a2yhczbviv";
        package = "packages/ocamlbuild/ocamlbuild.0.14.0";
      };
      pname = "ocamlbuild";
      src = pkgs.fetchurl 
      {
        sha256 = "0y1fskw9rg2y1zgb7whv3v8v4xw04svgxslf3856q2aqd7lrrcl7";
        url = "https://github.com/ocaml/ocamlbuild/archive/0.14.0.tar.gz";
      };
      version = "0.14.0";
    };
    ocamlfind = 
    {
      opamInputs = 
      {
        conf-m4 = selection.conf-m4;
        graphics = selection.graphics or null;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0gipclfkvihny5ljh8pqyy36qjhfkfj2zvzcxf2dgzngs1y32id7";
        package = "packages/ocamlfind/ocamlfind.1.8.1";
      };
      pname = "ocamlfind";
      src = pkgs.fetchurl 
      {
        sha256 = "00s3sfb02pnjmkax25pcnljcnhcggiliccfz69a72ic7gsjwz1cf";
        url = "http://download.camlcity.org/download/findlib-1.8.1.tar.gz";
      };
      version = "1.8.1";
    };
    ocplib-endian = 
    {
      opamInputs = 
      {
        base-bytes = selection.base-bytes;
        cppo = selection.cppo;
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:0j5ymxa4ky208k8m4bprvmvbqf9jnr4d0xwdaivznbv85jq9hw4q";
        package = "packages/ocplib-endian/ocplib-endian.1.1";
      };
      pname = "ocplib-endian";
      src = pkgs.fetchurl 
      {
        sha256 = "0qy5q7p11gxi5anhvi8jj6mr80ml0ih8lax5k579rsr2hsp3sns5";
        url = "https://github.com/OCamlPro/ocplib-endian/archive/1.1.tar.gz";
      };
      version = "1.1";
    };
    result = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1c7lw8dbchllz3rl801xwpm82r427vnrv7b7kqh0gwjglya50y28";
        package = "packages/result/result.1.5";
      };
      pname = "result";
      src = pkgs.fetchurl 
      {
        sha256 = "0cpfp35fdwnv3p30a06wd0py3805qxmq3jmcynjc3x2qhlimwfkw";
        url = "https://github.com/janestreet/result/releases/download/1.5/result-1.5.tbz";
      };
      version = "1.5";
    };
    seq = 
    {
      opamInputs = {
                     ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1vm8mk6zm2q3fwnkprl6jib048zr4ysldw0bl74x6wwbxj0vx6k9";
        package = "packages/seq/seq.base";
      };
      pname = "seq";
      src = null;
      version = "base";
    };
    stdlib-shims = 
    {
      opamInputs = 
      {
        dune = selection.dune;
        ocaml = selection.ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:19g9dnaxyh2ajz6pdczdsqzzvsmfrxwx6f613inkr31jw5hrqkiz";
        package = "packages/stdlib-shims/stdlib-shims.0.3.0";
      };
      pname = "stdlib-shims";
      src = pkgs.fetchurl 
      {
        sha256 = "0jnqsv6pqp5b5g7lcjwgd75zqqvcwcl5a32zi03zg1kvj79p5gxs";
        url = "https://github.com/ocaml/stdlib-shims/releases/download/0.3.0/stdlib-shims-0.3.0.tbz";
      };
      version = "0.3.0";
    };
    topkg = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1asjip3cr84b1n1n4q8b5zrcki87niz6imb9m9zaj2kqdywmp0m5";
        package = "packages/topkg/topkg.1.0.3";
      };
      pname = "topkg";
      src = pkgs.fetchurl 
      {
        sha256 = "0b77gsz9bqby8v77kfi4lans47x9p2lmzanzwins5r29maphb8y6";
        url = "http://erratique.ch/software/topkg/releases/topkg-1.0.3.tbz";
      };
      version = "1.0.3";
    };
    wayland-proxy-virtwl = 
    {
      buildInputs = [ (pkgs.linux-headers or null) ];
      opamInputs = 
      {
        cmdliner = selection.cmdliner;
        cstruct = selection.cstruct;
        dune = selection.dune;
        fmt = selection.fmt;
        logs = selection.logs;
        lwt = selection.lwt;
        ocaml = selection.ocaml;
        xmlm = selection.xmlm;
      };
      opamSrc = "wayland-proxy-virtwl.opam";
      pname = "wayland-proxy-virtwl";
      src = self.directSrc "wayland-proxy-virtwl";
      version = "development";
    };
    xmlm = 
    {
      opamInputs = 
      {
        ocaml = selection.ocaml;
        ocamlbuild = selection.ocamlbuild;
        ocamlfind = selection.ocamlfind;
        topkg = selection.topkg;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        hash = "sha256:1sllk1bcqdbb67fcimwb9j4z8n0z1z49aqgy65vwsigzymmnjz14";
        package = "packages/xmlm/xmlm.1.3.0";
      };
      pname = "xmlm";
      src = pkgs.fetchurl 
      {
        sha256 = "1rrdxg5kh9zaqmgapy9bhdqyxbbvxxib3bdfg1vhw4rrkp1z0x8n";
        url = "http://erratique.ch/software/xmlm/releases/xmlm-1.3.0.tbz";
      };
      version = "1.3.0";
    };
  };
}

