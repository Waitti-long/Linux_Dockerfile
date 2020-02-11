<% from pwnlib.shellcraft import i386 %>
<%docstring>
Execute a different process.

    >>> p = run_assembly(shellcraft.i386.linux.sh())
    >>> p.sendline(b'echo Hello')
    >>> p.recv()
    b'Hello\n'

</%docstring>
${i386.linux.execve('/bin///sh', ['sh'], 0)}
