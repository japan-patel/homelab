<STRONG>Authelia<STRONG>: https://www.authelia.com/
<STRONG>LLDAP<STRONG>:  https://github.com/lldap/lldap
<STRONG>Homepage<STRONG>:  https://gethomepage.dev/
<STRONG>Caddy<STRONG>:  https://caddyserver.com/
<STRONG>Actual Budget<STRONG>:  https://actualbudget.org/

<h1>Setup VMs</h1>
This setup runs on 2 VMs. 1 will act as swarm manager and other as worker. Ansible playbooks are tested with following setup for VMs.
1) Need to create 2 ubuntu 24.04.4 server VMs 
2) User must be same on both VMs

<h1>Setup configs</h1>
<ol>
    <li>Go to [hosts.yml](../inventory/hosts.yml) and add ip for swarm manager VM and worker VM.</li>
    <li>Go to [vault.yml](../inventory/group_vars/authentication/vault.yml) of authentication and create secrets as per comments in the file.</li>
    <li>Go to [vault.yml](../inventory/group_vars/apps/vault.yml) of apps and fill info as per comments.</li>
    <li>Make sure you have updated [00-entrypoint.sh](../roles/authDB/files/00-entrypoint.sh) with database and schema names as mentioned in comments in vault file at step 2.</li>
    <li>Now navigate to Actual Budget's [docker-compose.yml](../roles/actual_budget/files/docker-compose.yml) and update the domain/FQDN.</li>
    <li>Now navigate to Authelia's [configuration.yml](../roles/authelia/files/config/configuration.yml) and update the domain/FQDN as mentioned in comments.</li>
    <li>Create/generate certs for Authelia and place the cert and key files at [certs](../roles/authelia/files/config/certs/).</li>
    <li>Now navigate to Caddy's [Caddyfile](../roles/caddy/files/caddy_config/Caddyfile) and update the domain/FQDN for proxy.</li>
    <li>Now navigate to Homepage's [docker-compose.yml](../roles/homepage/files/docker-compose.yml) and update the domain in environment.</li>
    <li>Now navigate to LLDAP's [docker-compose.yml](../roles/lldap/files/docker-compose.yml) and update the domain of homepage url. Might want to add entry in caddy file for proxy as well</li>
    <li>Now navigate to LLDAP's [lldap_config.toml](../roles/lldap/files/data/lldap_config.toml) and update the domain as mentioned in comments.</li>
</ol>
    