using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DarwinianPokemon.Attacks
{
    interface IAttack
    {
        int GetDamage(Pokemon attacker, Pokemon defender);
    }
}
