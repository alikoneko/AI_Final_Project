using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AI_Final_Project.Attacks
{
    interface IAttack
    {
        int GetDamage(Pokemon attacker, Pokemon defender);
    }
}
