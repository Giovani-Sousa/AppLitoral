import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PeleScreen(),
  ));
}

class PeleScreen extends StatelessWidget {
  const PeleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guia Litoral SP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF2CCD9D),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Tour do Pelé: o Rei do Futebol\n',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      '📞 13 997719829\n',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      color: const Color.fromARGB(255, 236, 232, 232),
                      child: Image.asset(
                        'img/pele7.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Informações',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Programação prevista:\n',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      '9:00 - Encontro no hotel Novotel Santos Gonzaga\n'
                      '9:45 - Chegada ao Memorial das Conquistas\n'
                      '10:50 - Museu Pelé\n'
                      '11:50 - Monumento ao Camisa 10\n'
                      '12:20 - Memorial Necrópole Ecumênica\n'
                      '13:00 - Padoca Santista\n'
                      '13:30 - Mural de Eduardo Kobra\n'
                      '14:30 - Hotel Novotel\n',
                      style: TextStyle(fontSize: 16),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Inclui: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'transporte, guia de turismo e ingressos para o Museu do Pelé e o Memorial das Conquistas do Santos F.C\n',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Não Inclui: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Alimentação\n',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'Observações: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'A realização deste passeio condicionada a um número mínimo de inscritos. No caso de não ocorrer, os participantes poderão optar por participar de outro passeio ou terem os valores ressarcidos integralmente; A programação pode ser alterada devido a questões operacionais; As inscrições devem ser realizadas previamente.\n',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Contatos:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '📞 13 997719829\n'
                      '🌐 https://www.turismosantos.com.br/?q=pt-br/node/1916\n'
                      '📧 bandeiraverde@bandeiraverde.com.br\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Roteiro',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Partiremos para a Vila Belmiro. Lá encontra-se o Estádio Urbano Caldeira,onde visitaremos o Memorial das Conquistas do Santos F.C., independentemente de torcerem por outros times, todos têm admiração pelas conquistas do “Leão do Mar”. Faremos um tour completo, com visita a sala de troféus, sala de imprensa, vestiários e gramado. Passaremos pelo Centro de Treinamento Rei Pelé e chegaremos ao centro histórico onde está localizado o Museu Pelé. Nele, estão expostos artigos que remetem a vida do gênio do futebol e à história das quatro Copas em que ele participou: 1958 (quando estreou com 17 anos de idade), 62, 66 e 70, quando se sagrou tricampeão mundial. Que tal uma passadinha no Monumento ao Camisa 10, na entrada da cidade? Em seguida, iremos ao Memorial Necrópole Ecumêmica, e caso o acesso esteja liberado visitaremos o jazigo da família Arantes do Nascimento assim como o mausoléu onde o corpo do Rei descansa. Depois, sentiremos a brisa do mar fazendo um tour panorâmico na orla da praia para viver o clima praiano onde o rei também mostrava seu talento. Chega a hora de uma parada na famosa Padoca Santista, onde torcedores e ex-jogadores costumam se encontrar para ver os jogos do Peixe. Em frente, você poderá fazer uma selfie na estátua de Pelé dando um soco no ar. E para finalizar, iremos até o Santos Convention Center para admirarmos o mural gigante do famoso artista Eduardo Kobra que entre cenas santistas mostra o Pelé vestindo a camisa da seleção brasileira e com Santos escrito no seu peito.\n',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2CCD9D),
      padding: const EdgeInsets.all(8.0),
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Termos de Uso',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Ajuda',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {},
              ),
            ],
          ),
          const Text('@Copyright'),
        ],
      ),
    );
  }
}

