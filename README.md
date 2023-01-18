# Flintstones LDAP demo

This is an [OpenLDAP](https://www.openldap.org) Docker [image](https://hub.docker.com/r/dnknth/ldap-demo) with demo data.

It is based on [mwaeckerlin/openldap](https://github.com/mwaeckerlin/openldap)
and contains an initial directory with [Flintstones](https://en.wikipedia.org/wiki/The_Flintstones)
characters, courtesy of [PHPLdapAdmin](https://phpldapadmin.sourceforge.net/).

To bind to the directory, use one of the following accounts:

|  DN  | Password | Role |
| ---- | -------- | ---- |
| cn=admin,dc=flintstones,dc=com | bedrock | admin |
| cn=Bamm Bamm Rubble,ou=People,dc=flintstones,dc=com | bammbamm | user |
| cn=Fred Flintstone,ou=People,dc=flintstones,dc=com | yabbadabbado | user |
| cn=Wilma Flintstone,ou=People,dc=flintstones,dc=com | pebble | user |

Regular users can read and modify their password. Admins can do whatever they want.
Anonymous users can read everything except passwords.
