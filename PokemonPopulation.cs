using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon
{
    class PokemonPopulation
    {
        private List<Pokemon> population;
        private int max_population;
        private Random random = new Random();
        private Logger log;
        private int turn_count = 0;
        /*
         * This generates an initial population.  
         */
        
        public PokemonPopulation(List<PokemonFactory> factories, int initial_population, int max_population)
        {
            this.max_population = max_population;

            random = ServiceRegistry.GetInstance().GetRandom();
            log = ServiceRegistry.GetInstance().GetLog();
            population = new List<Pokemon>();

            for (int index = 0; index < initial_population; index++)
            {
                Pokemon pokemon = factories[random.Next(0, factories.Count)].Generate();
                pokemon.SetInitialAge();
                population.Add(pokemon);
            }
        }

        public void Turn()
        {
            log.Log("Turn: " + turn_count + "\n");
            log.Log("Population: " + population.Count + "\n");
            foreach (Pokemon pokemon in population)
            {
                log.Log(pokemon + "\n");
                pokemon.Heal();
            }

            int fights_remaining = 0;
            int breeds_remaining = (int)(population.Where(p => p.Breedable).ToList<Pokemon>().Count * 0.75); //introduces new pokemon to the population.

            if (population.Count > max_population)
            {
                fights_remaining = (population.Count - max_population) + (int)(population.Count * 0.10);
            }//culls to max + percent.
            else
            {
                fights_remaining = (int)(population.Count * 0.10);
            }

            while (fights_remaining > 0 || breeds_remaining > 0)
            {
                if (breeds_remaining == 0)
                {
                    try
                    {
                        RandomFight();
                    }
                    catch (PokemonNotFoundException e)
                    {
                       
                    }
                    fights_remaining--;
                }
                else if (fights_remaining == 0)
                {
                    try
                    {
                        RandomBreed();
                    }
                    catch (PokemonNotFoundException e)
                    {

                    }
                    breeds_remaining--;
                }
                else if(random.Next(0,2) == 0)
                {
                    try
                    {
                        RandomFight();
                    }
                    catch (PokemonNotFoundException e) 
                    { 
                    
                    }
                    fights_remaining--;
                }
                else
                {
                    try
                    {
                        RandomBreed();
                    }
                    catch (PokemonNotFoundException e)
                    {

                    }
                    breeds_remaining--;
                }
            }

            foreach (Pokemon pokemon in population)
            {
                pokemon.IncreaseAge();
            }

            foreach (Pokemon pokemon in population.Where(p => p.Dead).ToList<Pokemon>())
            {
                log.Log(pokemon.ToString() + " has died of old age");
                population.Remove(pokemon);
            }


            turn_count++;
        }

        private void RandomBreed()
        {
            Pokemon father = RandomBreedablePokemon();
            Pokemon mother = FindBreedingMatch(father);
            Pokemon baby = mother.Breed(father);
            log.Log("father: " + father.Name);
            log.Log("mother: " + mother.Name);
            log.Log("child: " + baby.Name);
            population.Add(baby);
        }

        private Pokemon RandomPokemon(List<Pokemon> pokemon)
        {
            if (pokemon.Count > 0)
            {
                return pokemon[random.Next(0, pokemon.Count)];
            }
            else
            {
                throw new PokemonNotFoundException();
            }
        }
        private Pokemon RandomPokemon()
        {
            return RandomPokemon(population);
        }

        private Pokemon RandomBreedablePokemon()
        {
            return RandomPokemon(population.Where(candidate => candidate.Breedable == true).ToList<Pokemon>());
        }

        private Pokemon FindMatch(Pokemon source)
        {
            return RandomPokemon(population.Where(candidate => candidate != source).ToList<Pokemon>());
        }
        private Pokemon FindBreedingMatch(Pokemon source)
        {
            return RandomPokemon(population.Where(candidate => candidate != source && candidate.Breedable).ToList<Pokemon>());
        }

        private void RandomFight()
        {
            Pokemon attacker = RandomPokemon();
            Pokemon defender = FindMatch(attacker);
            log.Log(attacker.Name + " faught " + defender.Name + "\n");
            Fight fight = new Fight(attacker, defender);
            population.Remove(fight.Loser());
        }

        public List<Pokemon> GetPopulation()
        {
            return this.population;
        }

        public int GetTurnCount()
        {
            return turn_count;
        }

    }
}
