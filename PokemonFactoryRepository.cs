using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;

namespace DarwinianPokemon
{
    class PokemonFactoryRepository
    {
        SQLiteConnection connection;

        public PokemonFactoryRepository()
        {
            connection = ServiceRegistry.GetInstance().GetDBConnection();
        }

        public List<PokemonFactory> All()
        {
            List<PokemonFactory> factories = new List<PokemonFactory>();

            SQLiteCommand command = new SQLiteCommand("select * from pokemon_factories", connection);
            SQLiteDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                int type_1 = (int)(long)reader["type_1_id"];
                int type_2 = (int)(long)reader["type_2_id"];
                StatRange hp_range = new StatRange((int)(long)reader["hp_min"], (int)(long)reader["hp_max"]);
                StatRange attack_range = new StatRange((int)(long)reader["attack_min"], (int)(long)reader["attack_max"]);
                StatRange defense_range = new StatRange((int)(long)reader["defense_min"], (int)(long)reader["defense_max"]);
                StatRange special_attack_range = new StatRange((int)(long)reader["special_attack_min"], (int)(long)reader["special_attack_max"]);
                StatRange special_defense_range = new StatRange((int)(long)reader["special_defense_min"], (int)(long)reader["special_defense_max"]);
                StatRange speed_range = new StatRange((int)(long)reader["speed_min"], (int)(long)reader["speed_max"]);
                string name = (string)reader["name"];

                PokemonFactory factory = new PokemonFactory(type_1, type_2, hp_range, attack_range, defense_range, special_attack_range, special_defense_range, speed_range, name);

                factories.Add(factory);
            }

            return factories;
        }
    }
}
