import QtQuick 2.6
import QtQuick.Controls 2.0

ApplicationWindow {
    id: root
    width: 600
    height: 600
    visible: true

    Canvas {
        anchors.fill:parent

        onPaint: {
            var context = getContext("2d");

            // the triangle
            context.beginPath();
            context.moveTo(60, 60);
            context.lineTo(400, 400);
            context.lineTo(60, 400);
            context.closePath();

            // the fill color
            context.fillStyle = "orange";
            context.fill();
        }
    }

    Rectangle  {
        color: "lightblue"
        width: 100
        height: 100

        x: 20
        y: 20

        transform: Rotation {
            origin.x: 100;
            origin.y: 100;
            axis { x: 0; y: 0; z: 1 } angle: 45
        }

        SequentialAnimation on x {
            loops: Animation.Infinite
            PropertyAnimation {to: 330; duration: 3000 }
            PropertyAnimation {to: 20; duration: 3000 }
        }

        SequentialAnimation on y {
            loops: Animation.Infinite
            PropertyAnimation {to: 330; duration: 3000 }
            PropertyAnimation {to: 20; duration: 3000 }

        }
    }
}
