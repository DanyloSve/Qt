#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    tickCount = 0;
    QTimer *timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(timerTick()));
    timer->start(1000);
}

void MainWindow::timerTick()
{
    tickCount++;
    qDebug() << tickCount;
}

MainWindow::~MainWindow()
{
    delete ui;
}

