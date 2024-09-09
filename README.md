# libasm

### Registres généraux (64 bits)

1. **RAX** (Accumulator Register)
   - Utilisé pour le stockage temporaire des résultats intermédiaires ou des valeurs de retour des fonctions.
   - Souvent utilisé pour les opérations arithmétiques.

2. **RBX** (Base Register)
   - Utilisé comme registre de base dans certaines instructions d'adressage.
   - Ce registre est préservé lors des appels de fonction (callee-saved).

3. **RCX** (Counter Register)
   - Utilisé comme compteur pour les boucles et les opérations de chaîne (`rep` et `loop`).
   - Peut également être utilisé pour passer le quatrième argument à une fonction.

4. **RDX** (Data Register)
   - Utilisé pour les opérations arithmétiques et comme second registre pour les résultats.
   - Utilisé pour passer le troisième argument à une fonction.

5. **RSI** (Source Index)
   - Utilisé pour pointer vers les chaînes source dans les opérations de chaîne (`movsb`, `movsw`, `movsd`, etc.).
   - Passe le deuxième argument à une fonction.

6. **RDI** (Destination Index)
   - Utilisé pour pointer vers les chaînes destination dans les opérations de chaîne.
   - Passe le premier argument à une fonction.

7. **RBP** (Base Pointer)
   - Utilisé comme pointeur de base pour les cadres de pile (stack frames).
   - Ce registre est souvent utilisé pour conserver l'adresse de la base de la pile.
   - Préservé lors des appels de fonction (callee-saved).

8. **RSP** (Stack Pointer)
   - Pointeur de pile, il pointe toujours vers le sommet de la pile (stack).
   - Utilisé pour gérer les appels de fonction et les retours, ainsi que le stockage temporaire.

9. **R8 - R15** (Registres additionnels)
   - Registres supplémentaires utilisés pour passer les arguments aux fonctions.
   - `R8` passe le cinquième argument, `R9` passe le sixième, etc.
   - `R8d`, `R9d`, etc., sont les versions 32 bits de ces registres.

### Registres segmentaires

- **CS** (Code Segment)
  - Contient le segment de code courant.
  
- **DS** (Data Segment)
  - Utilisé pour les données générales.
  
- **SS** (Stack Segment)
  - Contient le segment de pile.
  
- **ES**, **FS**, **GS**
  - Registres segmentaires supplémentaires pour des utilisations spécifiques ou extensions.

### Registres d'indicateur (Flags) - RFLAGS

Les registres d'indicateur stockent l'état du processeur après une opération arithmétique ou logique.

- **CF** (Carry Flag)
  - Indique un dépassement dans une opération arithmétique (retenue).
  
- **ZF** (Zero Flag)
  - Indique que le résultat d'une opération est zéro.
  
- **SF** (Sign Flag)
  - Indique que le résultat d'une opération est négatif.
  
- **OF** (Overflow Flag)
  - Indique un dépassement d'une opération sur un entier signé.
  
- **PF** (Parity Flag)
  - Indique la parité (nombre de bits à 1 dans le résultat est pair).

- **AF** (Adjust Flag)
  - Utilisé dans les opérations arithmétiques binaires (BCD).
  
- **IF** (Interrupt Flag)
  - Indique si les interruptions sont activées ou désactivées.

### Registres d'instructions

- **RIP** (Instruction Pointer)
  - Contient l'adresse de la prochaine instruction à exécuter.

### Versions 32 bits et 16 bits des registres

- Les registres 64 bits peuvent être utilisés en tant que registres 32 bits, 16 bits, et même 8 bits :
  - **RAX** → **EAX** (32 bits), **AX** (16 bits), **AH/AL** (8 bits).
  - **RBX** → **EBX** (32 bits), **BX** (16 bits), **BH/BL** (8 bits).
  - **RCX** → **ECX** (32 bits), **CX** (16 bits), **CH/CL** (8 bits).
  - **RDX** → **EDX** (32 bits), **DX** (16 bits), **DH/DL** (8 bits).
  - Et ainsi de suite pour les autres registres.

### Registres spécifiques au contexte d'exécution

- **RFLAGS** (Flags Register)
  - Contient les indicateurs de statut du processeur (voir section Registres d'indicateur).
