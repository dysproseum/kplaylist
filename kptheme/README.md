### The `kptheme` folder

This folder is totally optional and kPlaylist will load default theming internally if it doesn't exist.

Themes are placed in subfolders here, whose files can include:

````
Download design

NB! These only work for the 1.8 release.
````

| Template file | description |
| ------------- | ----------- |
| login		    | Login window |
| infobox		| The vertical window containing all menus |
| endmp3table	| The menus after the listing of files and directories |
| top		    | HTML code for the main tables |
| bottom		| Bottom HTML code (bottom, after all the rest.) |
| blackbox	    | The menu design (the boxes) |
| detailedview	| Detailed album |

Here are the included themes in an increasing order of complexity, changing the core behavior without modifying its files.

### Themes list

* **stock:** the stock files provided with kplaylist.

* **custom:** annotated with labels to make it easier to tell what files to modify. also includes adjusted colors in CSS and mobile width styling.

    you can use these colors by specifying `kptheme/custom/external.css` for "External CSS" in any other theme.

* **html5_player_legacy:** communicates with an HTML5 player on the same page.

    this is big news - links have all been adjusted to control the web streaming bar at the bottom of the screen - instead of opening in a separate application!

* **webamp_legacy:** because of the work done on HTML5 player, we can also integrate with the ~~winamp~~ webamp player.

This is a great advancement! However, these players will reset when user navigates to another page to browse for more music.

Enter the iframe players...

* **html5_player:** the listing page and the player now get included in their own iframes, so when the user navigates in one, the music keeps playing in the other.

* **webamp:** initially, webamp was placed in its own iframe in the typical lower-right corner of the window, but could not be dragged very far from this corner.

    the player now gets included in the parent window HTML so it can be dragged fullscreen.

### Notes

For randomization, make sure to set `kptheme/<theme_name>/randomizer.js` as "External JS" value.

### Future Development

Go make your own!

Making the iframe themes was big inspiration in building Dysproseum Desktop.

See it in action here: https://dysproseum.com/desktop/
