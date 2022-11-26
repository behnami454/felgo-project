import QtQuick 2.0
import Felgo 3.0

/*!

   \qmltype RossiModel
   \brief this page opens when we click on more in previous pages ( technically here is the result page of the MODAL that we used before )

  this the the RossiModel


   \section1 inserting informations

   Creating variable that we can insert information in it and then later we show them in AppListView:

   \qml
    property var myModel: [
        {label: "Catalan", info: "He has won 10 trophies"},
        {label: "Dutch", info: "He has won 10 trophies"},
        {label: "Italy", info: "He has won 9 trophies"},
        {label: "Spanish", info: "He has won 9 trophies"},
        {label: "Australia", info: "He has won 8 trophies"},
        {label: "British", info: "He has won 8 trophies"},
        {label: "Czech", info: "He has won 7 trophies"},
        {label: "Malaysian", info: "He has won 7 trophies"},
        {label: "Rio", info: "He has won 6 trophies"},
        {label: "German", info: "He has won 6 trophies"},
    ]

   \endqml


   \section2 showing datas

   in this part we show the informations that we inserted into \l {https://felgo.com/doc/felgo-applistview/} {Felgo AppListView} :

   \qml
            AppListView {
                backgroundColor: "#151414"
                model: rossiModel.myModel

                // shwoing informations
                delegate:
                    AppListItem {
                    backgroundColor: "#151414"
                    text: modelData.label
                    detailText: modelData.info
                }
            }
   \endqml


*/


Page {

    id: rossiModel
    backgroundColor: "#151414"

    // insert some information
    property var myModel: [
        {label: "Catalan", info: "He has won 10 trophies"},
        {label: "Dutch", info: "He has won 10 trophies"},
        {label: "Italy", info: "He has won 9 trophies"},
        {label: "Spanish", info: "He has won 9 trophies"},
        {label: "Australia", info: "He has won 8 trophies"},
        {label: "British", info: "He has won 8 trophies"},
        {label: "Czech", info: "He has won 7 trophies"},
        {label: "Malaysian", info: "He has won 7 trophies"},
        {label: "Rio", info: "He has won 6 trophies"},
        {label: "German", info: "He has won 6 trophies"},
    ]

    NavigationStack {
        Page {
            backgroundColor: "#151414"

            AppListView {
                backgroundColor: "#151414"
                model: rossiModel.myModel

                // shwoing informations
                delegate:
                    AppListItem {
                    backgroundColor: "#151414"
                    text: modelData.label
                    detailText: modelData.info
                }
            }
        }
    }
}
