﻿using System;

namespace Task2_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Round r = new Round(1,2,-1);
            Console.ReadLine();
        }
    }
    public class Round
    {
        private double _x = 0, _y = 0, _radius = 0;
        public Round(double x, double y, double radius)
        {
            if (radius >= 0)
            {
                _x = x;
                _y = y;
                _radius = radius;
            }
            else
            {
                throw new ArgumentOutOfRangeException("Radius's value is lesser than zero","radius");
            }
        }
        public double GetAbscissa() { return _x; }
        public double GetOrdinate() { return _y; }
        public double GetRadius() { return _radius; }
        public double GetArea
        {
            get { return Math.PI * _radius * _radius; }
        }
        public double GetLength
        {
            get { return 2 * Math.PI * _radius; }
        }
        public override string ToString()
        {
            return $"Coordinates of the circle's center:( {_x}, {_y})" + Environment.NewLine + $"Radius: {_radius}";
        }
    }
}
