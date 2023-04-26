// ignore_for_file: constant_identifier_names

class Assets {
  static const String INTRO_TEXT = '''
\u2022 Crearea unui storybook pentru Flutter este o metodă eficientă de a uniformiza design-ul și de a oferi exemple clare pentru a ajuta dezvoltatorii să înțeleagă și să utilizeze eficient acest framework. Un storybook este o colecție de componente UI, care pot fi vizualizate și testate separat sau împreună, pentru a crea aplicații cu un aspect și o funcționalitate uniformă.

\u2022 Crearea unui storybook pentru Flutter poate ajuta la dezvoltarea de componente UI de înaltă calitate, care pot fi reutilizate în întreaga aplicație. Utilizarea unui storybook poate economisi timp și efort, deoarece dezvoltatorii pot vedea cum sunt implementate diferite componente UI într-un singur loc, iar apoi le pot utiliza în mod corespunzător în întreaga aplicație.

\u2022 În plus, un storybook poate fi utilizat pentru a împărtăși exemple și idei cu ceilalți membri ai echipei de dezvoltare, ceea ce poate duce la îmbunătățirea și uniformizarea design-ului și a funcționalității aplicației.

\u2022 În concluzie, crearea unui storybook pentru Flutter este o metodă utilă pentru dezvoltarea de componente UI de înaltă calitate, uniformizarea design-ului și oferirea de exemple clare. Această metodă poate economisi timp și efort și poate duce la dezvoltarea unei aplicații cu un aspect și o funcționalitate coerentă și consistentă.
''';

  static const String SETUP = '''
 \u2022 Ideea de a avea separat proiectul in folderul de widgetbook si nu in lib vine din ideea de a putea fi importat in orice proiect direct
  si apoi doar folosit in cadrul folderului de lib ca atare.

 \u2022 Pentru a porni proiectul trebuie mai intai sa avem instalat flutter sdk -> https://flutter.dev/;

 \u0222 Adaugam flutter in path astfel, 
 
 pentru Windows:
    - WINDOWS_KEY+R_KEY;
    - Scriem SystemPropertiesAdvanced;
    - Click Environment Variables;
    - In User variables selectam Path si dam edit;
    - Adaugam calea catre bin (Ex: C:\\flutter\\bin);
    - Ok si asta e tot;

pentru Linux/MacOS:
    - echo \$SHELL (asa ne vom da seama daca folosim bash sau z shell);
    - in functie de raspuns daca e bash-> nano ~/.bash_profile si scriem export PATH="\$PATH:/Users/[my_user_name]/Development/flutter/bin/";
    - daca e zshell -> nano ~/.zshrc si scriem export PATH="\$PATH:/Users/[my_user_name]/Development/flutter/bin/";
    - in ambele cazuri la final salvam si rulam comanda source ~/.zshrc sau ~/.bash_profile in functie de situatie;

 \u2022 Trebuie sa rulam apoi comanda flutter pub get in terminal;
''';

  static const String RUN = '''
  Daca folosim structura de fisiere curenta pentru a putea rula proiectul trebuie sa rulam comanda flutter run -t widgetbook/main.dart;
  Altfel pur si simplu run la proiect; (flutter run);
''';

  static const String LIMITATIONS = '''
Dat fiind modul de lucru momentan pentru web hotreload-ul pare sa nu functioneze;
''';
}
