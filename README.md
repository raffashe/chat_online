# Chat Online

![chat_online](https://github.com/user-attachments/assets/36d2fd24-5852-4e58-abe3-ec5007709137)

## Descrição
**Chat Online** é um aplicativo simples desenvolvido em Flutter, que permite a criação de contas, login, e a participação em conversas em tempo real. O aplicativo está conectado ao Firebase para gerenciamento de autenticação e troca de mensagens. As funcionalidades principais incluem:
- Tela de splash
- Cadastro (Sign Up)
- Login
- Lista de conversas
- Tela de bate-papo

## Funcionalidades
- **Autenticação com Firebase**: Registro e login de usuários com Firebase Auth.
- **Chat em tempo real**: Utilização do Firestore para armazenar e sincronizar mensagens em tempo real.

## Dependências
Aqui está uma lista das dependências usadas no projeto e suas funcionalidades:

| Dependência          | Versão  | Descrição                                                               |
| -------------------- | ------- | ----------------------------------------------------------------------- |
| `flutter`            | sdk     | SDK principal para o desenvolvimento do app em Flutter.                 |
| `cupertino_icons`    | ^1.0.8  | Ícones no estilo iOS para uso no aplicativo.                            |
| `firebase_core`      | ^3.8.0  | Necessária para a conexão do aplicativo com os serviços Firebase.       |
| `flutter_screenutil` | ^5.9.3  | Responsável por ajustes de layout e responsividade de telas no Flutter. |
| `firebase_auth`      | ^5.3.3  | Utilizada para a autenticação de usuários via Firebase.                 |
| `cloud_firestore`    | ^5.5.0  | Usada para armazenar e sincronizar dados (mensagens) em tempo real.     |
| `firebase_storage`   | ^12.3.6 | Armazenamento de mídias e arquivos no Firebase.                         |
| `provider`           | ^6.1.2  | Gerenciamento de estado para facilitar a comunicação entre widgets.     |

## Como Instalar e Rodar o Projeto

### Pré-requisitos
1. **Flutter SDK**: Certifique-se de ter o [Flutter](https://flutter.dev/docs/get-started/install) instalado em sua máquina.


### Passo a Passo
1. Clone este repositório:
   ```bash
   git clone https://github.com/usuario/chat_online.git
   ```
2. Navegue até o diretório do projeto:
   ```bash
   cd chat_online
   ```
3. Instale as dependências do projeto:
   ```bash
   flutter pub get
   ```
4. Adicione os arquivos de configuração do Firebase (fornecidos pelo desenvolvedor) nas pastas `android` e `ios`:
   - **Android**: `android/app/google-services.json`
   - **iOS**: `ios/Runner/GoogleService-Info.plist`
   
5. Execute o projeto em um emulador ou dispositivo físico:
   ```bash
   flutter run
   ```

### Observações
- **Firebase**: Por este projeto estar conectado ao Firebase, é necessário que o desenvolvedor forneça os arquivos de configuração (`google-services.json` para Android e `GoogleService-Info.plist` para iOS) para que seja possível executar o aplicativo corretamente.

