ldapsearch -x -H ldap://adserver.internal.tjon.net -D "ad-ctjon@domain.tjon.net" -W -b "cn=users,dc=domain,dc=tjon,dc=net" -s sub "(cn=*)" cn mail sn
