import 'package:flutter/material.dart';

class MyArticleDetail extends StatefulWidget {
  MyArticleDetail({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyArticleDetail createState() => _MyArticleDetail();
}

class _MyArticleDetail extends State<MyArticleDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clube do XP - Detalhes do Artigo"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(0.0),
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Image.asset(
                  "assets/images/tormenta20.jpeg",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:15, left: 10, bottom: 10),
              width: double.infinity,
              height: 60,
              child: Text("A experiência de construir uma ficha em Tormenta20", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: Text("Se baseia na versão 3.0 - versão Final do Material de Playtest) \n\nDesde que me tornei apoiador do projeto, me preocupei em receber um material que, apesar de beber da fonte do D&D, conseguisse se sobressair de forma a se basear em um sistema anterior, sem perder sua identidade e genialidade. \n\nSou jogador de Tormenta desde a gloriosa época do 3DeT, também passei pelo Tormenta D20, e sempre fui fascinado pelas ilustrações da Erica Awano (que me inspirou a seguir por um tempo o caminho de ilustrador) e pelos textos do Marcelo Cassaro. \n\nTormenta fez parte da minha infância e adolescência e por isso me vejo aqui, construindo minha primeira ficha de T20, regressando 17 anos no passado, decidindo de qual Deus me tornarei devoto, e tentando prestar atenção a pontos positivos/negativos que noto no material enquanto vou construindo meu personagem. \n\nCaro leitor, tenha em mente que esta é uma matéria em construção, caso encontre mais pontos, irei acrescentá-los aqui. \n\nEstou construindo a ficha de um Bardo Híbrido (Fascinação/Esgrima Mágica), Caótico Mal, discípulo de Sszzass, e os pontos encontrados são baseados nos desafios de construir esta ficha. \n\nVocê pode encontrar uma versão editável da ficha de Tormenta 20 aqui mesmo no nosso site. \n\n Classes Disponíveis \n\nPontos Positivos: A quantidade de classes disponibilizadas é extensa, são 14 classes distintas com inúmeras possibilidades de poderes, que em sua maioria contemplam bem o escopo de possibilidades esperadas para cada classe. \n\nPontos de Melhoria: No material disponibilizado não existe nenhum texto introdutório para as classes. \n\nNo material específico por classe, temos apenas o nome da classe seguido imediatamente por suas características (PM, PV, Etc). \n\nAcredito que no material final e no livro (que anseio por receber) vai haver ao menos desenhos de cada classe para podermos diferenciar um Lutador, de um Bucaneiro ou um Guerreiro. \n\nSem os textos e os desenhos fica complicado imaginar a função daquela classe, a menos que revisemos cuidadosamente os poderes das classes. \n\nEscolha de Poderes de Classe \n\nPontos Positivos: A substituição dos traits de classe de D&D 5ed, agrupados por subtipo, por poderes soltos e desconexos, a princípio causa estranheza, porém, ao montar a ficha este sentimento é substituído pela satisfação da construção de um personagem muito mais personalizado e versátil, com foco nos objetivos do jogador e não apenas no escopo da classe. \n\nA substituição de 'Talentos/Feats' do D&D 5ed pelos 'Poderes Gerais' também considero muito bem vinda ao material, faz bastante sentido aproximar os conceitos de Poderes de Classe e Poderes Gerais, ou seja, algo que foi extensivamente treinado/aprendido sendo por meio de treinamento de classe ou por contexto de vida. \n\nUma menção honrosa aos Poderes da Tormenta, que trazem o jogador para o contexto histórico do material a ser jogado, e cria uma maneira criativa de enriquecer a história dos personagens. \n\nAdicionar detalhes de 'contato com a Tormenta' a uma história ou grupo de histórias, torna o jogo muito mais harmonioso com o contexto do mundo no qual ele se passa. \n\nPontos de Melhoria: Apesar de gostar da versatilidade de poder escolher poderes fora de um escopo fechado de subclasse (exemplo: Em D&D 5ed Ladino possui o arquétipo Assassino, cujas skills só podem ser escolhidas por quem segue este arquétipo), acredito que uma organização leve dos poderes em sub-nichos não exclusivos, por exemplo: 'Habilidades Ofensivas/Defensivas/Suporte' facilitaria a construção da ficha no sentido de estimular escolhas mais coesas de poderes e habilidades. \n\nEvolução do Personagem \n\nPontos Positivos: O personagem ter suas skills melhoradas com o passar dos seus níveis não é novidade para quem já está acostumado com D&D 5ed e seu 'Bônus de Proficiência', que cresce de acordo com o nível do personagem. \n\nTormenta diverge em um pequeno detalhe do sistema mencionado acima: Os bônus são significativamente maiores. \n\nOu seja, cada upgrade de nível no seu personagem se torna evidente e significativo. Isso torna a evolução do personagem mais harmoniosa e cada nível único em seus desafios. \n\nPontos de Mana - PM's \n\nPontos Positivos:\n\n Esse aqui é bem polêmico! Sempre fui fã de jogar com PM's em 3DeT, acredito que isso dê mais controle ao jogador do que pode ser feito, sem limitar a quantidade de usos de uma determinada magia por dia, como ocorre em D&D 5ed (com exceção dos truques). \n\nQuando o personagem pode conjurar livremente as magias que preferir, o personagem se torna mais adaptável a qualquer contexto, e por consequência se torna mais forte. \n\nPontos de Melhoria: \n\nPM's são, de acordo com o próprio material, PONTOS DE MANA. Mana é algo que, para mim, está diretamente ligado à Magias e poderes sobrenaturais. \n\nAchei um pouco sem sentido por exemplo, um 'Guerreiro' ter que gastar PM's para executar suas habilidades. \n\nNeste caso eu poderia citar o Fighter de D&D 5ed, com seus Action Points, criados com o mesmo intuito dos PM's, mas com um nome que faz mais sentido para a classe. \n\nPor enquanto é isso pessoal, opiniões, discussões e coisas do tipo serão muito bem vindas!",
                  style: TextStyle(fontSize: 16),),
              )
            ),
            Container(
              margin: EdgeInsets.only(top:5, right: 10),
              width: double.infinity,
              height: 20,
              alignment: Alignment.bottomRight,
              child: Text("por Felipe Nanes", style: TextStyle(fontSize: 16 , fontFamily: "Roboto"),),
            )
          ],
        )
    );
  }
}