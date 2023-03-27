## Ausgangssituation


Die Firma Packmeister GmbH möchte ihren Kunden, im Rahmen von Industrie 4.0, den Ser-vice des „predictive Maintenance“ anbieten.
Nennen Sie jeweils zwei Vorteile für die Packmeister GmbH und deren Kunden durch die Ein-führung des Service des „predictive Maintenance“.
Sie sind im Projektteam, das einen Geschäftsprozess zu „predictive Maintenance“ einführen soll. Der Ablauf des Geschäftsprozesses wurde bereits vorgegeben.
Füllen Sie die Vorlage des eEPK (Anlage 4), anhand der folgenden Beschreibung aus.
Die Service-Abteilung überwacht automatisiert die Sensordaten. Sobald ein Schwellenwert überschritten wird, kontrolliert ein Mitarbeiter die entsprechenden Daten der Kunden-Daten-bank. Die relevanten Daten sind in der Tabelle ,.tb_Sensordaten ‘ gespeichert. Anhand des Da¬tenblattes des betroffenen Motors prüft ein Mitarbeiter, ob ein Wartungsfall vorliegt.
Liegt kein Wartungsfall vor, gilt der Prozess als beendet und der Kunde wird darüber in Kennt-nis gesetzt.
Liegt ein Wartungsfall vor, muss die Dringlichkeit eingeordnet werden. Drei Stufen werden un-terschieden: Hohe, mittlere oder niedrige Dringlichkeit. Ein Mitarbeiter nimmt diese Einordnung anhand einer Wartungsvorlage und des Datenblatts der jeweiligen Maschine unter Abgleich der Daten aus der Tabelle :)tb_Sensordatenw vor.
Abhängig von der Dringlichkeit entscheidet der Mitarbeiter, wann eine Wartung von welchem Techniker durchgeführt werden soll und trägt dies in den Wartungskalender ein. Die benötigten Informationen bezieht er aus einer Tabelle „tb_Techniker“ in der die Qualifikationen der einzel¬nen Techniker enthalten sind und dem Datenblatt der Maschine. Gleichzeitig bestellt dieser Mitarbeiter Ersatzteile, falls welche benötigt werden.
Wenn Terminierung und Bestellung durchgeführt wurden erfolgt eine Rückmeldung an den Kunden und - falls nötig - an den entsprechenden Techniker. Sobald die beteiligten Personen über den Wartungstermin informiert wurden, ist dieser Prozess abgeschlossen.

## Plantuml
``` 
@startuml Service 
split 
    -[hidden]->
    : Sensor überschreitet Schwellenwert>
split again
    -[hidden]->
    : Datenblatt;
split again 
    -[hidden]->
    : to_Sensordaten;
end split
' Kasten eins
: Prüfen ob 
Wartungsfall vorliegt;
if (XOR) then (Nein)
: kein Wartungsfall>
else (Ja)
: Wartungsfall>
split 
' übergang 
split again
    -[hidden]->
    : Wartungsvorlage|
split again
    -[hidden]->
    : Datenblatt|
split again
-[hidden]->
    : Tabelle "tb_Sensordaten"|
end split
' Kasten zwei 
: Dringlichkeit 
    einordnen;
if (XOR) then 
: hohe driglichkeit;
elseif (XOR) then
: mittlere Dringlichkeit;
else ()
: hohe Dringlichkeit;
endif
split 
: XOR}
split again
    -[hidden]->
    : "tb_Techniker"|
split again
    -[hidden]->
    : Datenblatt|
split again
    -[hidden]->
    : Wartungskalender|
    -[hidden]->
end split
' Kasten drei 
: Terminierung 
 und ggf.
 Materialbestellung;
if (V) then
: Terminierung ist erfolgt;
else
: Materialbestellung;
endif
' letzter Kasten vier
: Information an
 Kunde und
 Techniker;
endif
split
    : Personen sind 
     informiert>
    -[hidden]->
split again
    -[hidden]->   
    : Wartungskalendar |
    -[hidden]->   
end split 

@enduml
```
<img src="../out/Service_Rule/Aufgabe6_ASP2_Sommer2022/Service.svg" alt="diagram from above">