package main.java;

import java.applet.Applet;
import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionListener;

public class MouseDrag extends Applet implements MouseMotionListener {
    @Override
    public void init() {
        super.init();
        addMouseMotionListener(this);
        setBackground(Color.BLUE);
    }

    @Override
    public void mouseDragged(MouseEvent e) {
        Graphics graphics = getGraphics();
        graphics.setColor(Color.white);
        graphics.fillOval(e.getX(),e.getY(),20,20);
    }

    @Override
    public void mouseMoved(MouseEvent e) {

    }
}
