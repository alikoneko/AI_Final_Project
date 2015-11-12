using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;

namespace DarwinianPokemon.Attacks
{
    class SpecialAttack
    {
        private SQLiteConnection connection;
        public SpecialAttack()
        {
            connection = ServiceRegistry.GetInstance().GetDBConnection();
        }

        public double GetMultiplier(int attack, int defense)
        {
            string statement = "select multiplier from type_effectiveness where attack_type_id = " + attack + " and defense_type_id = " + defense;
            SQLiteCommand command = new SQLiteCommand(statement, connection);
            SQLiteDataReader reader = command.ExecuteReader();
            double multiplier = 0.0;
            while (reader.Read())
            {
                multiplier = (double)reader["multiplier"];
            }
            return multiplier;
        }
    }
}
