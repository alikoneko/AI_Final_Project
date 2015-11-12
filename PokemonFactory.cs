using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class PokemonFactory
    {
        private StatRange hp_range;
        private StatRange attack_range;
        private StatRange defense_range;
        private StatRange special_attack_range;
        private StatRange special_defense_range;
        private StatRange speed_range;
        private int type_1;
        private int type_2;
        private string name;


        public PokemonFactory(int type_1, int type_2, StatRange hp_range, StatRange attack_range, StatRange defense_range, StatRange special_attack_range, StatRange special_defense_range, StatRange speed_range, string name)
        {
            this.type_1 = type_1;
            this.type_2 = type_2;
            this.hp_range = hp_range;
            this.attack_range = attack_range;
            this.defense_range = defense_range;
            this.special_attack_range = special_attack_range;
            this.special_defense_range = defense_range;
            this.speed_range = speed_range;
            this.name = name;
        }

        public Pokemon Generate()
        {
            return new Pokemon(type_1, type_2, hp_range.Random(), attack_range.Random(), defense_range.Random(), special_attack_range.Random(), special_defense_range.Random(), speed_range.Random(), name);
        }
    }
}
