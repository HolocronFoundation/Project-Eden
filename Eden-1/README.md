# Eden-1

Eden-1 is a 1GB file-system which is usable and secure, enabling people to hold their own data and secure their own passwords and private keys in a convenient and portable fashion.

## Design

Below is an anticipated design of Eden-1

<pre>
<
  Launch Eden Drive*
  Browser*,**
  [Encrypted] User data/keys
  <
    Data (Settings, contacts, etc.)
    Keys/Password
    Cached data
  >
>
*   Needs to work on Windows/Linux/Mac
**  Needs to be web3.0 enabled and have ad-blocking (Brave?),
    Needs to not store any user data outside of the encrypted areas
    (Perhaps use a fork/extended version of Brave which launches
    a prompt to decrypt the drive? Or perhaps just build everything
    as an extension for brave?)
</pre>