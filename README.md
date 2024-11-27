# Chat Online

![chat_online](https://github.com/user-attachments/assets/36d2fd24-5852-4e58-abe3-ec5007709137)

## Sobre o Projeto

O **Chat Online** é um aplicativo simples de chat desenvolvido com **Flutter** e integrado ao **Firebase** para autenticação e comunicação em tempo real. Ele inclui as seguintes funcionalidades:

- **Tela de Splash**
- **Cadastro (Sign Up)**
- **Login**
- **Lista de Conversas**
- **Tela de Bate-papo**
- **Mensagens em tempo real** (real-time messaging)

### Funcionalidades

- **UI Design**: Interface simples e intuitiva.
- **Firebase Integration**: Integração com Firebase para autenticação e armazenamento de dados.
- **Firebase Authentication**: Autenticação de usuários com email e senha.
- **Firestore Database Integration**: Uso do Firestore como banco de dados para armazenar e recuperar conversas.
- **Realtime Chat Functionality**: Bate-papo em tempo real com envio e recebimento de mensagens.
- **Unread Message Counter**: Contador de mensagens não lidas.
- **Last Message shown**: Exibição da última mensagem na lista de conversas.
- **Error Handling**: Tratamento de erros robusto.
- **Optimization and Best Practices**: Código otimizado com boas práticas.
- **Enhancement & Debugging**: Melhoria contínua e depuração de código.
- **Provider State Management**: Gerenciamento de estado utilizando o Provider.
- **MVVM Architecture**: Arquitetura baseada no padrão MVVM.

## Instalação e Execução do Projeto

Siga os passos abaixo para configurar e rodar o projeto em sua máquina:

### 1. Clonar o repositório
```bash
git clone https://github.com/seu-usuario/chat_online.git
cd chat_online
```

### 2. Instalar as dependências do Flutter
```bash
flutter pub get
```

### 3. Configurar o Firebase
> **Observação**: Como o projeto está conectado ao Firebase, você precisará notificar o desenvolvedor para configurar corretamente o Firebase no seu ambiente de testes. Entre em contato para obter os arquivos de configuração (`google-services.json` para Android e `GoogleService-Info.plist` para iOS).

### 4. Executar o projeto
```bash
flutter run
```

## Dependências

O projeto utiliza as seguintes dependências:

| Dependência           | Versão  | Descrição                                                               |
| --------------------- | ------- | ----------------------------------------------------------------------- |
| `firebase_core`       | ^3.8.0  | Integração do Flutter com o Firebase para inicialização do app.         |
| `firebase_auth`       | ^5.3.3  | Autenticação de usuários utilizando Firebase Authentication.            |
| `cloud_firestore`     | ^5.5.0  | Banco de dados NoSQL em tempo real oferecido pelo Firebase Firestore.   |
| `firebase_storage`    | ^12.3.6 | Armazenamento de arquivos e mídia no Firebase Storage.                  |
| `provider`            | ^6.1.2  | Gerenciamento de estado simples com a abordagem Provider.               |
| `flutter_screenutil`  | ^5.9.3  | Ferramenta para responsividade da interface de usuário.                 |
| `cupertino_icons`     | ^1.0.8  | Pacote de ícones no estilo Cupertino para iOS.                          |
| `flutter_lints` (dev) | ^4.0.0  | Conjunto de lints recomendados para boas práticas de código no Flutter. |
| `flutter_test` (dev)  |         | Framework de testes para aplicações Flutter.                            |

## Observações

- O Firebase precisa ser configurado corretamente para que o projeto funcione. Isso inclui adicionar os arquivos de configuração do Firebase para Android e iOS.
- Certifique-se de estar usando o SDK do Flutter compatível conforme especificado no arquivo `pubspec.yaml`.
