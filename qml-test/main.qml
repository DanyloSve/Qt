import QtQuick 2.6
import QtQuick.Controls 2.0
import io.qt.examples.backend 1.0

ApplicationWindow
{
    id: root
    width: 600
    height: 600
    visible: true

    BackEnd
    {
        id: backend
    }

    Rectangle
    {
          width: 400
          height:400

        Canvas
        {
                 anchors.fill:parent

                onPaint:
                {
                 var context = getContext("2d");

                // the triangle
                context.beginPath();
                context.moveTo(60, 60);
                context.lineTo(600, 600);
                context.lineTo(60, 600);
                context.closePath();

                // the fill color
                context.fillStyle = "#FFCC00";
                context.fill();
            }
        }
    }


    Rectangle
    {
        color: "lightblue"
        width: 100
        height: 100

        x: 20
        y: 20

        transform: Rotation
        {
            origin.x: 100;
            origin.y: 100;
            axis { x: 0; y: 0; z: 1 } angle: 45
        }



           SequentialAnimation on x
           {
               loops: Animation.Infinite
               PropertyAnimation {to: 600; duration: 6000 }


           }

           SequentialAnimation on y
           {
               loops: Animation.Infinite
               PropertyAnimation {to: 600; duration: 6000 }
           }
    }
}


