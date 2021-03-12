# `pytket` pour le hackathon quantique

> :sunglasses: This introduction has an English translation, available [here](README_EN.md).

De la part de Cambridge Quantum Computing, bienvenue au hackathon quantique!
Ce petit guide devrait vous permettre de démarrer rapidement dans `pytket`,
une bibliothèque Python haute performance pour la construction et simplifications de programmes
quantiques.

Si des questions se posent durant le hackathon,
n'hésitez pas à me contacter sur le Slack, ou par email si vous préférez!

Luca Mondada: [luca.mondada@cambridgequantum.com](mailto:luca.mondada@cambridgequantum.com)

## Installation

Assurez-vous tout d'abord qu'une version récente de
[Python](https://www.python.org/downloads/) soit installé sur votre machine.
Vous pouvez vérifier ceci dans une console:
```shell
python --version
```
Je vous conseille d'utiliser `Python 3.7` ou `Python 3.8`.

### Créer un environnement virtuel
Il est en général préférable de créer des projets Python dans des environnement indépendants,
afin d'éviter d'éventuels conflits de version entre différents paquets.
Pour ce hackathon, vous êtes libres de choisir l'outil d'environnements virtuels que vous préférez.
Toutes les instructions et indications qui suivent seront identiques pour tout environnement.
[venv](https://docs.python.org/3/library/venv.html) est le choix le plus simple, puisque cet outil est automatiquement installé par défault dans Python.
Si vous n'êtes pas à l'aise avec la console et/ou peu familier avec Python,
[Anaconda](https://www.anaconda.com/products/individual) est une excellente alternative qui gère les
environnements de façon relativement transparente et offre une interface graphique.

Pour `venv`, créez et activez un nouvel environnement virtuel (j'utilise `tket-env` comme nom de l'environnement -- libre à vous de changer ce nom). Notez que cette commande créera un environnement
dans le dossier où vous vous trouvez; aussi assurez-vous d'être dans le dossier désiré.
```shell
python3 -m venv tket-env
source tket-env/bin/activate
```
Si vous êtes sur Windows, remplacez la deuxième commande par `tket-venv\Scripts\activate.bat`.
Notez que si vous utilisez PowerShell ou un autre shell (comme `fish` ou `csh`), le script à lancer
pour cette deuxième commande peut changer, référez-vous à la
[documentation](https://docs.python.org/3/library/venv.html).

### Installez pytket
L'outil`tket` que nous utiliserons dans ce hackathon est accessible par le paquet Python `pytket`.
Je vous conseille d'installer `pytket-qiskit` par la même occasion. 
`pytket-qiskit` intègre `qiskit`,
un outil d'IBM qui entre autres donne accès à leurs ordinateurs quantiques et de nombreux simulateurs,
de sorte que toutes ces fonctionalités sont directement
accessibles depuis `pytket`.

```shell
pip install pytket pytket-qiskit
```

> *tket et pytket: Quelle différence?*
>
> `tket` représente l'ensemble des outils haute performance pour la programmation quantique
> à disposition. `pytket` est le paquet Python qui donne accès à ces fonctionalités depuis Python.

Pour le développement intéractif en Python, je vous conseille d'utiliser les notebooks de Jupyter.
Installez-les aussi avec pip:
```python
pip install jupyter notebook
```

C'est fait! Vous êtes maintenant prêts pour le hackathon!

## Les bases
Les ordinateurs quantiques (et les simulateurs) disponibles à l'heure actuelle
exécutent les programmes quantiques donnés dans un format spécifique,
qu'on appelle "circuit quantique".
On peut voir ces circuits comme l'équivalent de l'assembleur dans le monde de l'informatique
classique.
Votre travail consiste dès lors à définir de tels circuits quantiques pour qu'ils puissent
ensuite être exécutés.

Définir un circuit avec 3 qubits:
```python
from pytket import Circuit

n_qubits = 3
circ = Circuit(n_qubits)
```
La documentation de `Circuit` liste de nombreuses méthodes très utiles.
Je vous conseille de garder [cette page](https://cqcl.github.io/pytket/build/html/circuit_class.html)
ouverte comme référence.

Un circuit consiste simplement en une suite de portes qui agissent sur un sous-ensemble des qubits
à disposition, typiquement sur un ou deux qubits.
Parmi les portes les plus courantes sont les rotations (autour des axes X, Y ou Z) ainsi que le
"control-NOT" (CNot), la négation controllée, aussi appelée `CX`.

Il est facile d'appliquer des portes à notre circuit:
```python
# une rotation X sur le qubit 1
circ.Rx(1)
# une rotation Z sur le qubit 0
circ.Rz(0)
# une porte CNot entre qubits 0 et 2
circ.CX(0, 2)
```
La liste de toutes les portes disponibles dans pytket est très longue. Elle est
disponible dans la documentation [ici](https://cqcl.github.io/pytket/build/html/optype.html).

Nous devons encore définir la fin du circuit:
pour obtenir le résultat du circuit, il nous faut lire les qubits après la dernière opération.
Pour lire ("mesurer") tous les qubits
```python
circ.measure_all()
```
Voilà! Vous avez votre premier circuit!

Vous pouvez le visualiser à tout moment en utilisant `print(circ)`, ou pour une visualisation
graphique élégante, vous pouvez utiliser `qiskit`:
```python
from pytket.extensions.qiskit import tk_to_qiskit
print(tk_to_qiskit(circ))
```

## Exécuter votre circuit
Nous avons vu comment définir un circuit et le visualiser,
mais qu'est-ce que pouvons-nous en faire à présent?

Il y a deux options: l'option plus _cool_ serait d'exécuter cela sur un "vrai" ordinateur quantique.
Cela est tout-à-fait possible: les machines disponibles aux publique exposent le plus souvent une API
qui permet de soumettre est exécuter des circuits à distance.
Pour toutes ces machines, `tket` propose des extensions qui permettent d'exécuter
vos circuits directement depuis `pytket`
(bien sûr il vous faut une connection internet pour cela).
La liste de ces extensions se trouve [ici](https://cqcl.github.io/pytket/build/html/getting_started.html).

Le hic est que cela nécessite une clé pour l'API en question, et l'utilisation pour de nombreuses machines
est payante.
L'exception est IBM, ou chacun peut obtenir une clé qui donne accès à certaines machines IBM gratuitement.
Pour obtenir une clé, suivez les
[instructions d'IBM](https://quantum-computing.ibm.com/docs/manage/account/).
Pouvoir exécuter un circuit sur une vrai machine est fun,
mais je dois vous prévenir que ce n'est jamais sans difficultés!
En particulier, préparez-vous à entrer une longue file d'attente, avant d'obtenir vos
résultats d'IBM.

La deuxième option consiste à simuler l'exécution de votre circuit sur votre ordinateur en local.
Ceci est la solution plus simple, et la plus utilisée en pratique, surtout quand il s'agit d'itérer
rapidement dans le développement.
C'est ce que je vous conseille pour ce hackathon.
Utilisez le simulateur de qiskit comme suit.
Voici un exemple complet où on définit un circuit, puis le simplifie, et finalement exécute la simulation.
```python
from pytket.backends.ibm import AerBackend # le simulateur

# défini le circuit comme dans la section précédente
circ = Circuit(2, 2)
circ.Rx(0.3, 0).Ry(0.5, 1).CRz(-0.6, 1, 0).measure_all()

# initialise le simulateur
backend = AerBackend()
# chaque machine et simulateur a des restrictions concernant
# les portes que peuvent être exécutées
# la compilation du circuit guaranti que le circuit est dans un format
# reconnu par simulateur (ou l'ordinateur quantique)
backend.compile_circuit(circ)
# exécute la simulation
handle = backend.process_circuit(circ, n_shots=20)
# obtient les résultats
shots = backend.get_result(handle).get_shots()
```

Ceci était une très courte introduction.
Je vous conseille vivement de lire
[la page suivante](https://cqcl.github.io/pytket/build/html/manual_backend.html)
de la documentation de pytket
sur l'exécution de circuits à l'aide de simulateurs et ordinateurs quantiques
en plus de détail.

## Comment continuer
Ceci était un premier aperçu du _workflow_ de la conception
d'un circuit quantique à son exécution.
Il y a encore beaucoup plus à découvrir.
Je vous conseille d'explorer toute la série de notebooks d'exemple d'utilisation de pytket
disponible sur le [github de pytket](https://github.com/CQCL/pytket/tree/master/examples) (en anglais).
Voici en particulier une sélection que je recommande en continuation de cette introduction:
- [Exécuter un circuit sur les backends](https://github.com/CQCL/pytket/blob/master/examples/backends_example.ipynb)
- [Optimisation de circuit](https://github.com/CQCL/pytket/blob/master/examples/compilation_example.ipynb)
- [Techniques avancées pour la création de circuits](https://github.com/CQCL/pytket/blob/master/examples/circuit_generation_example.ipynb)

## Vos tâches
Vous êtes maintenant prêts pour les _vrais_ défis.
Vous trouverez deux notebooks dans ce dossier que vous pouvez aborder avec tket:
 1. "Build your own Quantum Architecture" [[build_your_arch.ipynb](build_your_arch.ipybn)]
 2. Richie put your notebook name here

Bonne chance! N'hésitez pas à nous contacter pour toute question :wink:
