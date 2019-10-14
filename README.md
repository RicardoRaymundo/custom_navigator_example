[![use-pattern][use-pattern-badge-url]][use-pattern-url]
[![Flutter][flutter-badge-url]][flutter-url]
[![github][github-badge-url]][github-url]


# RicardoRaymundo/custom_navigator_example
Exemplo de navegação com animações customizadas em Flutter

Inspirado orinalmente em [Everything you need to know about Flutter page route transition](https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823).

<img src="https://media.giphy.com/media/IdTUMYqdGWz3Bn4zht/giphy.gif" width="200">

## Conteúdo
1. [Utilizar](#utilizar)
2. [Aprender](#aprender)
3. [Contribuir](#contribuir)

## Utilizar

[Aprenda a clonar um repositório pelo GitHub.](https://help.github.com/en/articles/cloning-a-repository)

```
$ git clone https://github.com/RicardoRaymundo/custom_navigator_example.git
```

## Aprender

### Flutter
- [Saiba mais sobre este framework para desenvolver mobile híbrido e começe agora!](https://flutter.dev/?gclid=Cj0KCQjwuZDtBRDvARIsAPXFx3B2TfM0D6BfUhMiNEtwoNnPRSGntBKR4lQy2RKASKZ6NePDKlCqoeUaAmpzEALw_wcB)
- [Flutter é desenvolvido baseado na linguagem Dart, saiba mais!](https://dart.dev/)
- [Livro de 'receitas' para Flutter](https://flutter.dev/docs/cookbook)

### Widgets of the Week
- [Veja a série 'Flutter Widgets of the Week'](https://www.youtube.com/watch?v=b_sQ9bMltGU&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG)

### Outros tutoriais de animação de pagina
 - [Animate a page route transition]()
 - [Level up Flutter page transition: choreographing animations across screens](https://uxdesign.cc/level-up-flutter-page-transition-choreographing-animations-across-screens-efb5ea105fca)
 - [Mais animações incriveis](https://flutterawesome.com/tag/animation/)
 
#### Sistema de Transição de página
Este repósitório conta com a classe estática **CustomNavigator**, que é como a classe **Navigator** padrão do Flutter porém desenvolvida para facilitar, em termos de sintaxe, a execução de transição de páginas com animação. 
 
### Exemplo de uso:
Como pode-se observar no exemplo abaixo, o uso da **CustomNavigator** é simples, só devem ser passados como parâmetros o contexto, a página para onde vamos navegar e a animação.

#### lib/page_a.dart
```
...
FlatButton(
              color: Colors.white,
              onPressed: () {
                CustomNavigator.push(
                  context,
                  PageB(),
                  customNavigationTransition,
                );
              },
              child: Text('Navegar para a página B'),
            ),
...
```

- Comparando este método com a forma padrão do Flutter, é evidente o trabalho e volume de código poupados

```
...
FlatButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Text('Navegar para a página B'),
            ),
...

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

```

#### Custom Navigation Transition
Este sistema de navegação conta com a classe **CustomNavigatorTransition**, que contém as animacções customizadas que serão utilizadas pela **CustomNavigator**:

|       ANIMAÇÃO       |                                     DESCRIÇÃO                                     |
|:--------------------:|:---------------------------------------------------------------------------------:|
| **slideTransitionLeft**  | Transição de página com animação de 'slide' horizontal da direita para a esquerda |
| **slideTransitionRight** | Transição de página com animação de 'slide' horizontal da esquerda para a direita |
| **slideTransitionUp**    | Transição de página com animação de 'slide' vertical de baixo para cima           |
| **slideTransitionDown**  | Transição de página com animação de 'slide' vertical de cima para baixo           |
| **scaleTransition**      | Transição de página com animação de 'scale' de dentro para fora                   |
| **rotationTransition**   | Transição de página com animação de 'rotation' com 'scale' de dentro para fora    |

#### Criando uma animação de transição de página:
Para criar uma nova animação de transicão é seguido o seguinte padrão:

```
static Widget rotationTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return RotationTransition(
      turns: Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.linear,
        ),
      ),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );

  }
```

## Contribuir
Contibuições são sempre muito bem vindas! As contribuições não precisam serem somente através de desenvolvimentos de códigos, qualquer ajuda com ideias, sugestões, melhorias na documentação ou doações para os desenvolvedores são sempre muito apreciadas! 

Participe da comunidade [Projeto que Vale](http://www.projetoquevale.com.br) e colabore da forma que achar melhor.


## Licença
MIT License

Copyright (c) 2018 PROJETO QUE VALE

É concedida permissão, gratuitamente, a qualquer pessoa que obtenha uma cópia deste software e dos arquivos de documentação associados (o "Software"), para negociar o Software sem restrições, incluindo, sem limitação, os direitos de uso, cópia, modificação e fusão , publicar, distribuir, sublicenciar e / ou vender cópias do Software, e permitir que as pessoas a quem o Software é fornecido o façam, sujeitas às seguintes condições:

O aviso de copyright acima e este aviso de permissão devem ser incluídos em todas as cópias ou partes substanciais do Software.

O SOFTWARE É FORNECIDO "NO ESTADO EM QUE SE ENCONTRA", SEM NENHUM TIPO DE GARANTIA, EXPRESSA OU IMPLÍCITA, INCLUINDO, MAS NÃO SE LIMITANDO ÀS GARANTIAS DE COMERCIALIZAÇÃO, ADEQUAÇÃO A UM FIM ESPECÍFICO E NÃO VIOLAÇÃO. EM NENHUMA CIRCUNSTÂNCIA, OS AUTORES OU PROPRIETÁRIOS DE DIREITOS DE AUTOR PODERÃO SER RESPONSABILIZADOS POR QUAISQUER REIVINDICAÇÕES, DANOS OU OUTRAS RESPONSABILIDADES, QUER EM ACÇÃO DE CONTRATO, DELITO OU DE OUTRA FORMA, DECORRENTES DE, OU EM CONEXÃO COM O SOFTWARE OU O USO OU OUTRAS NEGOCIAÇÕES NO PROGRAMAS.



[use-pattern-badge-url]: https://img.shields.io/badge/Padrão-USE-orange.svg
[use-pattern-url]: http://www.use-pattern.com/@use-pattern/grid-layout

[flutter-badge-url]: https://img.shields.io/badge/Flutter-1.9.1-blue
[flutter-url]: https://flutter.dev

[github-badge-url]: https://img.shields.io/badge/github-download-brightgreen.svg
[github-url]: https://www.npmjs.com/package/@use-patternt/grid-layout


