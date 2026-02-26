<STRONG>Authelia<STRONG>: https://www.authelia.com/
<STRONG>LLDAP<STRONG>:  https://github.com/lldap/lldap
<STRONG>Homepage<STRONG>:  https://gethomepage.dev/
<STRONG>Caddy<STRONG>:  https://caddyserver.com/
<STRONG>Actual Budget<STRONG>:  https://actualbudget.org/

<h1>Setup</h1>
<ol>
    <li>Go to [hosts.yml](../inventory/hosts.yml) and add ip for swarm manager VM and worker VM.</li>
    <li>Go to [vault.yml](../inventory/group_vars/authentication/vault.yml) of authentication and create secrets as commented in the file</li>