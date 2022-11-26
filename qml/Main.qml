import Felgo 3.0
import QtQuick 2.0
import "pages"



/*!

   \qmltype Main
   \brief the first page that will run

   this project is a simple hard-coded app using \l {https://felgo.com/}
   {Felgo} and doesn't use any Api

   \section1 Setting default Theme for the whole App

   To set the default theme, we can use this:

   \qml
    onInitTheme: {
        // Set the status bar style to white (light style)
        Theme.colors.statusBarStyle = Theme.colors.statusBarStyleWhite

        // Set the navigation bar background color
        Theme.navigationBar.backgroundColor = "black"
        Theme.navigationBar.titleColor = "white"
        Theme.navigationBar.dividerColor = "black"

        // Set the background color, which is used as background color of pages
        Theme.colors.backgroundColor = "#151414"

        // Set the global text color to white
        Theme.colors.textColor = "white"
    }

   \endqml

   \section3 Using another Page here with Refence

       to use another Page here we can do like this

   \qml
        HomePage{}
   \endqml

*/

App {
    id : app

    onInitTheme: {
        // Set the status bar style to white (light style)
        Theme.colors.statusBarStyle = Theme.colors.statusBarStyleWhite

        // Set the navigation bar background color
        Theme.navigationBar.backgroundColor = "black"
        Theme.navigationBar.titleColor = "white"
        Theme.navigationBar.dividerColor = "black"

        // Set the background color, which is used as background color of pages
        Theme.colors.backgroundColor = "#151414"

        // Set the global text color to white
        Theme.colors.textColor = "white"
    }

    // The first Page that will run
    HomePage{}
}
