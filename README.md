# 📍 BlipsBuilder pour FiveM

BlipsBuilder est un 🛠 outil de script indispensable pour les développeurs de serveurs FiveM qui permet d'ajouter des blips (marqueurs) sur la carte du jeu pour divers points d'intérêt comme les postes de police 🚓, les hôpitaux 🏥 et bien plus. Ce script simple et léger est parfait pour améliorer l'expérience de navigation 🗺 des joueurs dans votre monde de jeu.

## 🌟 Fonctionnalités

- **Facile à Modifier** : Un script clair et bien commenté, facile à personnaliser 🔧.
- **Flexible** : Ajoutez autant de blips que nécessaire avec des titres 🏷, des icônes 🎨 et des couleurs 🌈 personnalisés.
- **Compatibilité** : Fonctionne avec n'importe quelle version de FiveM qui prend en charge les scripts Lua.

## 📥 Installation

1. Téléchargez 📩 le script `BlipsBuilder`.
2. Placez `BlipsBuilder` dans le dossier `resources` de votre serveur FiveM.
3. Ajoutez `start BlipsBuilder` à votre fichier `server.cfg`.
4. Redémarrez votre serveur FiveM 🔄 ou rechargez la ressource.

## ⚙️ Configuration

Pour ajouter ou modifier des blips, éditez le tableau `blips` dans `BlipsBuilder.lua` :

```lua
local blips = {
    {title="Police Nationale - FA", colour=1, id=60, x=394.230, y=-1606.013, z=29.337},
    -- Ajoutez d'autres blips ici...
}
```

### Blip Parametre

| **Parametre** | **Description**                                |
| ------------- | ---------------------------------------------- |
| `title`       | The name displayed on the map.                 |
| `colour`      | The color of the blip (use FiveM color codes). |
| `id`          | The ID of the sprite (icon).                   |
| `x, y, z`     | Coordinates for the blip location.             |

Assurez-vous de remplir les champs title, colour, id, x, y, et z avec les données correspondant à chaque blip que vous souhaitez ajouter.

👥 Contribution
Si vous souhaitez contribuer à améliorer le script BlipsBuilder, les pull requests sont les bienvenues 🙌. Pour les problèmes majeurs, veuillez d'abord ouvrir un issue pour discuter 🗣 de ce que vous aimeriez changer.
