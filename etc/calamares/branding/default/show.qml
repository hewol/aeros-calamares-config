/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation {
        id: presentation
    
        Slide {
    
            Image {
                id: background
                source: "thanks.png"
                width: 490
                height: 200
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }
    
            Text {
                anchors.horizontalCenter: background.horizontalCenter
                anchors.top: background.bottom
                text: "Thank you for installing aerOS!<br>Please wait..."
                wrapMode: Text.WordWrap
                width: parent.width  // Make sure the text width is within the parent's width
                horizontalAlignment: Text.AlignHCenter
            }
        }



    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
