# PYTHON FMT EXAMPLES
La idea de este repo es comentar las distintas librerías que existen para formatear el código:
- isort
- black


## ISort
Es una librería que te organiza los imports y te los reordena para que sean más user-friendly, ejemplos:

Antes:
```
from my_lib import Object

import os

from my_lib import Object3

from my_lib import Object2

import sys

from third_party import lib15, lib1, lib2, lib3, lib4, lib5, lib6, lib7, lib8, lib9, lib10, lib11, lib12, lib13, lib14

import sys

from __future__ import absolute_import

from third_party import lib3

print("Hey")
print("yo")
```

Después:
```
from __future__ import absolute_import

import os
import sys

from third_party import (lib1, lib2, lib3, lib4, lib5, lib6, lib7, lib8,
                         lib9, lib10, lib11, lib12, lib13, lib14, lib15)

from my_lib import Object, Object2, Object3

print("Hey")
print("yo")
```

## Black
Es una librería que te auto-formatea el código, la filosofía de esta librería es que no pierdas el tiempo decidiendo como se debe formatear sino que delegues en ellos y uses ese tiempo en cosas más productivas.
Ejemplo de uso:

Antes:
```
def is_unique(
               s
               ):
    s = list(s
                )
    s.sort()
 
 
    for i in range(len(s) - 1):
        if s[i] == s[i + 1]:
            return 0
    else:
        return 1
 
 
if __name__ == "__main__":
    print(
          is_unique(input())
         )

```

Después:
```
def is_unique(s):
    s = list(s)
    s.sort()
 
    for i in range(len(s) - 1):
        if s[i] == s[i + 1]:
            return 0
    else:
        return 1
 
 
if __name__ == "__main__":
    print(is_unique(input()))
```

Alternativas a estas herramientas:

- Pycodestyle: Identifica violaciones de estilo pep8
- autopep8: Automáticamente arregla la mayoría de las violaciones que identifica y codestyle
- Add-trailing-comma, precommit que impone estilos
- Pylint: Solo lanza warnings tanto de estilos como de programación, no los arregla
- Pyflakes: Similar a pylint pero casi nunca se queja de estilos
-Flake8: combina pyflakes y pycodestyle, muy útil para checkear

Problemas de estas herramientas:
- Inconsistencia
- Resolución manual de errores