# Praxisaufgabe: Car Gallery

In der heutigen Aufgabe wollen wir eine Auto-Galerie App schreiben.

Es sind die Autos nach Herstellern (Manufacturer) aufgeteilt.

Implementiere sinnvoll die Models `CarModel`, `Manufacturer`.
Überlege dir dabei, ob eventuell ein Protokoll zu erfüllen/erben ist.

Im `CarGalleryViewModel` implementiere das ViewModel für die Car Gallery.
Es soll eine Liste von Herstellern als Variable enthalten sein.
Nutze `@Published`.

## Screenshots (zur Orientierung)

<img src="https://github.com/BernadetteWerneke/MyCarGallery/assets/120725476/be289e38-a6da-4105-a3b1-0864d6fb10f8" width="230">
<img src="https://github.com/BernadetteWerneke/MyCarGallery/assets/120725476/f612650c-e7a1-4bcf-9684-05f3dffece77" width="230">
<img src="https://github.com/BernadetteWerneke/MyCarGallery/assets/120725476/ecf86b63-c843-4455-9e46-6ff3aff3dbe9" width="230">
<img src="https://github.com/BernadetteWerneke/MyCarGallery/assets/120725476/a5a9571b-0609-4d98-93f1-17b2f4401d45" width="230">



---

## AddView
Schreibe eine View names `AddView`, welche es dem Benutzer ermöglicht, neue Autonamen hinzuzufügen.
##### Erwartetes Verhalten
Der Benutzer kann den Namen, ein Bild und eine Beschreibung des neuen Modells eingeben, und wenn das Modell einzigartig ist, wird es zur Liste der vorhandenen Autonamen hinzugefügt.
Weiterhin soll sich der View eine Closure names `addAction` übergeben lassen, die er aufrufen soll wenn man einen 'Hinzufügen'-Button clickt.

Die Ansicht zeigt eine ScrollView an, die eine LazyVGrid enthält, die die vorhandenen Autonamen als CarModelCard anzeigt.
Wenn der Benutzer auf eines der CarModelCards klickt, wird eine Detailansicht aufgerufen, die weitere Informationen über das entsprechende Auto anzeigt.

##### Bonus
Wie würdest du sicherstellen, dass man eine richtige Auswahl hat von Bildern, die auch im Asset Ordner enthalten sind? Z.B.: Du hast drei Bilder tesla.png, bmw.png und mercedes.png und willst sicherstellen, dass der User auch nur diese Bilder auswählen kann.

---

## CarModelView
 Schreibe eine Ansicht namens "CarModelView", die eine Liste von Autos darstellt.
##### Erwartetes Verhalten
Die Ansicht verwendet eine LazyVGrid-Ansicht, um die Liste der Autos in einem Gitterformat anzuzeigen. Jedes Auto wird durch eine separate Ansicht namens "CarModelCard" dargestellt. Jede Karte ist ein anklickbares Element, das den Benutzer zu einer Detailansicht des ausgewählten Autos führt.

Die Ansicht enthält auch eine AddView-Ansicht, die es dem Benutzer ermöglicht, neue Autos zur Liste hinzuzufügen. Wenn der Benutzer ein neues Auto hinzufügt, wird eine Aktion "addAction" ausgelöst, die das neu erstellte Auto der Liste "carModels" hinzufügt.

Die Ansicht verwendet NavigationStack um dem Benutzer das Navigieren zwischen den Ansichten zu ermöglichen und NavigationLink wird verwendet, um den Benutzer von der Liste der Autos zur Detailansicht jedes einzelnen Autos zu führen.

---

## CarModelCard
Schreibe einen View namens "CarModelCard", der eine Karte für jedes Auto in der Liste der Autos erstellt.
##### Erwartetes Verhalten
Jede Karte enthält ein Bild des Autos sowie den Namen des Autos und eine Schaltfläche, um das Auto zu den Favoriten hinzuzufügen oder daraus zu entfernen. Die Karte hat auch ein "isFavorite"-Flag, um anzuzeigen, ob das Auto als Favorit markiert ist oder nicht.

Die Ansicht verwendet ZStack, um das Bild des Autos und den Namen der Karte zu stapeln. Der Hintergrund der Karte ist eine halbdurchsichtige schwarze Farbe. Die Karte wird auch mit abgerundeten Ecken erstellt, um ein glattes Aussehen zu erzielen. Die Größe der Karte wird dynamisch berechnet, basierend auf der Breite des Geräts, auf dem die App ausgeführt wird.

Wenn der Benutzer auf die Schaltfläche "Herz" klickt, wird der Zustand "isFavorite" aktualisiert und das Symbol des Herzens wird entsprechend aktualisiert, um anzuzeigen, ob das Auto als Favorit markiert ist oder nicht.

---

## DetailView
Schreibe eine View `DetailView` für ein Auto-Modell.

##### Erwartetes Verhalten
Die Ansicht besteht aus einem ZStack mit einer transparenten schwarzen Farbe als Hintergrund und einem VStack, der den Namen des Auto-Modells, ein Bild des Autos und eine Beschreibung des Autos enthält.

Die Detailansicht erhält das Auto-Modell als Parameter und zeigt dessen Namen und Bild an. Die Beschreibung wird in einem Textfeld angezeigt, das horizontal um 10 Punkte gepolstert ist und rechtsbündig ausgerichtet ist. Die Ansicht wird mit "ignoresSafeArea" erweitert, um sicherzustellen, dass der Hintergrund die gesamte sichtbare Fläche einnimmt.

---

## ManufacturerCard
Schreibe eine View, die das Logo eines Autoherstellers darstellt.

##### Erwartetes Verhalten
Die View stellt Properties wie den Namen und das Logo des Herstellers dar. Das Logo wird als Bild mithilfe der Image-Ansicht dargestellt. Das Bild wird auf die Kartenhöhe und -breite skaliert und in eine abgerundete Rechteckform geclippt. Schließlich wird die Kartenansicht mit einem horizontalen Padding von 15 und einer festen Breite von 400 und Höhe von 200 angezeigt.

---

## ManufacturerView
Schreibe eine View namens "ManufacturerView", die eine Liste von Automobilherstellern anzeigt.

##### Erwartetes Verhalten
Die Ansicht verwendet einen "CarGalleryViewModel" StateObject zum Laden der Hersteller und deren Modelle. Die Hersteller werden als "ManufacturerCard" dargestellt und sind anklickbar, um die Modelle des entsprechenden Herstellers anzuzeigen. Die Ansicht wird in einem "NavigationStack" platziert, um die Navigation innerhalb der App zu erleichtern, und ignoriert die sichere Bereichsbegrenzung (ignoresSafeArea), um das Hintergrundfarbthema auf den gesamten Bildschirm auszudehnen.

---


