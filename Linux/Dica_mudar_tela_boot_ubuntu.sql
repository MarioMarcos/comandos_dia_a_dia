A boa noticia é que a animação que você vê no boot do Ubuntu pode ser modificada, e existe um conjunto de temas que podem ser instalados e configurados para substituir essa tela de boot padrão.
A seguir, você verá como fazer essa mudança.
Como mudar a tela de Boot do Ubuntu e seus derivados
Para mudar a tela de Boot do Ubuntu e seus derivados, você deve fazer o seguinte:

Passo 1. Abra um terminal (use as teclas CTRL + ALT + T);
Passo 2. Instale todos os temas para Plymouth com este comando:

sudo apt-get install plymouth-theme*
Passo 3. Para alterar a tela de boot use o seguinte comando:

sudo update-alternatives --config default.plymouth
Passo 4. Será exibido um menu com as opções de temas disponíveis. Digite o número de uma das opções e tecle “enter”, para confirmar.
como mudar a tela de boot do ubuntu

Passo 5. Finalmente, execute o comando a seguir para aplicar as alterações.

sudo update-initramfs -u