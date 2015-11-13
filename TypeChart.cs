using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SQLite;

namespace AI_Final_Project
{
    class TypeChart
    {
        private SQLiteConnection connection;

        public TypeChart()
        {
            connection = ServiceRegistry.GetInstance().GetDBConnection();
        }

        public Dictionary<int, double> GetTypeChart(int type)
        {
            Dictionary<int, double> typeChart = new Dictionary<int, double>();
            string query = "select * from type_effectiveness where attack_type_id = " + type;
            SQLiteCommand command = new SQLiteCommand(query, connection);
            SQLiteDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                typeChart.Add((int)(long)reader["defense_type_id"], (double)reader["multiplier"]);
            }
            return typeChart;
        }
    }
}
