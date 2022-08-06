# Gerenciando Usuários no Linux
useradd bento1 -c "Bento Teste" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) # craindo usuario com senha 

## script criando varios usuarios e pedindo para trocar a senha : 
useradd  bento10 -c  "Uauarios teste10" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123)
password bento10 -e
useradd  bento11 -c  "Uauarios teste10" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123)
password bento11 -e
useradd  bento12 -c  "Uauarios teste10" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123)
password bento12 -e

echo "Finalizando!!"

###
## Adicionando usuários a grupos
useradd fran -c "Fran Souza" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
cat /etc/group # para ver os grupos 
usermod -G root,admin  # para adicionar em varios grupos ao mesmo tempo (g) so adicionar em um grupo (G) para varios 















