Vgccoin Core
=============

Setup
---------------------
Vgccoin Core is the original Vgccoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Vgccoin transactions, which requires approximately 22 gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Vgccoin Core, visit [vgccoin.org](https://vgccoin.org/).

Running
---------------------
The following are some helpful notes on how to run Vgccoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/vgccoin-qt` (GUI) or
- `bin/vgccoind` (headless)

### Windows

Unpack the files into a directory, and then run vgccoin-qt.exe.

### macOS

Drag Vgccoin Core to your applications folder, and then run Vgccoin Core.

### Need Help?

* See the documentation at the [Vgccoin Wiki](https://vgccoin.info/) for help and more information.
* Ask for help on [#vgccoin](https://webchat.freenode.net/#vgccoin) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#vgccoin).
* Ask for help on the [VgccoinTalk](https://vgccointalk.io/) forums, in the [Technical Support board](https://vgccointalk.io/c/technical-support).

Building
---------------------
The following are developer notes on how to build Vgccoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/bitcoin-core/docs/blob/master/gitian-building.md)

Development
---------------------
The Vgccoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.bitcoincore.org/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [VgccoinTalk](https://vgccointalk.io/) forums.
* Discuss general Vgccoin development on #vgccoin-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#vgccoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [bitcoin.conf Configuration File](bitcoin-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
