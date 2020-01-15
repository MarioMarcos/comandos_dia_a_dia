Como alterar o fundo da tela de login no Ubuntu 18.04 ou superior
Para alterar o fundo da tela de login no Ubuntu 18.04 ou superior, você deve fazer o seguinte:

Passo 1. Abra um terminal (no use as teclas CTRL + ALT + T);
Passo 2. Mova a imagem que deseja configurar como fundo de login para pasta de imagens do sistema (/usr/share/backgrounds/), usando o comando abaixo (substitua o endereço/imagem pelo caminho e nome da imagem);

sudo cp endereço/imagem /usr/share/backgrounds/
Passo 3. Depois, execute o comando a seguir para editar o arquivo /etc/alternatives/gdm3.css, que está vinculado a /usr/share/gnome-shell/theme/gdm3.css, para define o fundo da tela de login do GDM;

sudo gedit /etc/alternatives/gdm3.css
Passo 4. Quando o arquivo estiver aberto, procure pela seção “lockDialogGroup”, que possui o seguinte conteúdo;
#lockDialogGroup {
  background: #2c001e url(resource:///org/gnome/shell/theme/noise-texture.png);
  background-repeat: repeat; }
Como alterar o fundo da tela de login no Ubuntu 18.04

Passo 5. Mude as linhas para o conteúdo abaixo (substitua imagem para o nome da imagem que quer usar) e salve o arquivo;

#lockDialogGroup {
  background: #2c001e url(file:///usr/share/backgrounds/imagem.png);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center; }
Passo 6. Finalmente, salve o arquivo e reinicie seu computador para aplicar as mudanças.

NOTA: estas alterações podem ser substituídas no caso de uma atualização do sistema com pacotes GDM.