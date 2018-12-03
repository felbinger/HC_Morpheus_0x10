# Solution of [HC 0x10](https://challenges.the-morpheus.de) from [The Morpheus Tutorials](https://the-morpheus.de)

## 1. Identify which protocol the service that is running on port 20017 is using
```
$ nmap -sV 185.244.192.170 -p20017
PORT      STATE SERVICE     VERSION
20017/tcp open  netbios-ssn Samba smbd 3.X (workgroup: 8C31A8D072BD)
```

## 2. Login using anonymous

## 3. Hacking Challenge
1. Recognize the encoding base64 in the file `.really` and [decode](https://www.base64decode.org/) it.

  ```
  $ base64 -d <<< "MDEwMTAxMDAgMDEwMDExMDEgMDEwMTAxMDAgMDExMTEwMTEgMDExMTAxMDAgMDExMDEwMDAgMDExMDEwMDEgMDExMTAwMTEgMDEwMTExMTEgMDExMTAxMTEgMDExMDAwMDEgMDExMTAwMTEgMDEwMTExMTEgMDExMTAxMDAgMDExMDExMTEgMDEwMTExMTEgMDExMDAxMDEgMDExMDAwMDEgMDExMTAwMTEgMDExMTEwMDEgMDAxMDExMDAgMDEwMTExMTEgMDExMTAxMTEgMDExMDAwMDEgMDExMTAwMTEgMDExMDExMTAgMDAxMDAxMTEgMDExMTAxMDAgMDEwMTExMTEgMDExMDEwMDEgMDExMTAxMDAgMDAxMTExMTEgMDExMTExMDEg"
  01010100 01001101 01010100 01111011 01110100 01101000 01101001 01110011 01011111 01110111 01100001 01110011 01011111 01110100 01101111 01011111 01100101 01100001 01110011 01111001 00101100 01011111 01110111 01100001 01110011 01101110 00100111 01110100 01011111 01101001 01110100 00111111 01111101
  ```
2. [Convert the binary numbers to ASCII characters](https://www.binaryhexconverter.com/binary-to-ascii-text-converter)

3. Flag: `TMT{this_was_to_easy,_wasn't_it?}`

## 3. Special Challenge
1. Recognize the esoteric language malbolge in the file `whats.that` and use a [interpreter](http://zb3.me/malbolge-tools/#interpreter) to get the flag

2. Flag: `TMT{$hIttY_3s0t3ri(_l4NgUage$}`
