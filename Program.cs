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

            MetaSolver pop = new MetaSolver(200, 10000);
            pop.RunSimulation();           
        }
    }
}
