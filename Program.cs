﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;

namespace AI_Final_Project
{
    class Program
    {
        static void Main(string[] args)
        {

            MetaSolver pop = new MetaSolver(100, 1000);
            pop.RunSimulation();           
        }
    }
}
