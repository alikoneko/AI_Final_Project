using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AI_Final_Project.Attacks;

namespace AI_Final_Project
{
    //enum Types { Normal, Fire, Fighting, Water, Grass, }
    class Pokemon
    {
        private static StatRange HP_RANGE = new StatRange(50, 250);
        private static StatRange ATTACK_RANGE = new StatRange(25, 150);
        private static StatRange DEFENSE_RANGE = new StatRange(50, 200);
        private static StatRange SPECIAL_ATTACK_RANGE = new StatRange(25, 150);
        private static StatRange SPECIAL_DEFENSE_RANGE = new StatRange(50, 200);
        private static StatRange SPEED_RANGE = new StatRange(50, 100);

        const int MUTATE_STAT_AMOUNT = 10;

        private int type_1;
        private int type_2;
        private int hp;
        private int attack;
        private int defense;
        private int special_attack;
        private int special_defense;
        private int speed;
        private int damage = 0;
        private Random random;
        private List<IAttack> attacks;
        private string name;

        public Pokemon(int type_1, int type_2, int hp, int attack, int defense, int special_attack, int special_defense, int speed, string name)
        {
            this.type_1 = type_1;
            this.type_2 = type_2;
            this.hp = hp;
            this.attack = attack;
            this.defense = defense;
            this.special_attack = special_attack;
            this.special_defense = special_defense;
            this.speed = speed;
            Initialize();
            this.name = name;
        }

        private void Initialize()
        {
            random = ServiceRegistry.GetInstance().GetRandom();
            this.attacks = new List<IAttack> 
            { 
                new Surf(),
                new HyperVoice(),
                new Pound(),
                new Gust()
            };
        }
        public void Damage(int damage)
        {
            this.damage += damage;
        }
      
        public override string ToString()
        {
            string pokemon = "";
            pokemon += name + "\n";
            pokemon += type_1 + " " + type_2 + "\n"
                + "Stats:\n"
                + "max hp: " + MaxHP + "\n"
                + "hp: " + HP + "\n"
                + "atk: " + attack + "\n"
                + "defense: " + defense + "\n"
                + "special attack: " + special_attack + "\n"
                + "special defense: " + special_defense + "\n"
                + "speed: " + speed + "\n";
            return pokemon;
        }

        public void Attack(Pokemon target)
        {
            target.Damage(attacks[random.Next(attacks.Count)].GetDamage(this, target));
        }

        public void Heal()
        {
            damage = 0;
        }

        
        public bool Dead
        {
            get
            {
                return HP <= 0;
            }
        }

        public int Level
        {
            get
            {
                return 50;
            }
        }

        public int HP
        {
            get
            {
                return hp - damage;
            }
        }

        public int MaxHP
        {
            get
            {
                return hp;
            }
        }

        public int AttackPower
        {
            get
            {
                return attack;
            }
        }

        public int Defense 
        {
            get
            {
                return this.defense;
            }
        }

        public int SpecialAttack
        {
            get
            {
                return this.special_attack;
            }
        }

        public int SpecialDefense
        {
            get
            {
                return this.special_defense;
            }
        }

        public int Speed
        {
            get
            {
                return this.speed;
            }
        }

        public int Type_1
        {
            get
            {
                return this.type_1;
            }
        }

        public int Type_2
        {
            get
            {
                return this.type_2;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }
        }
    }
}
