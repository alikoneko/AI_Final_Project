using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;

namespace DarwinianPokemon
{
    class ServiceRegistry
    {
        private static ServiceRegistry instance;
        private Random random;
        private SQLiteConnection connection;
        private Logger log;

        public static ServiceRegistry GetInstance()
        {
            if(null == instance)
            {
                instance = new ServiceRegistry();
            }

            return instance;
        }

        public ServiceRegistry()
        {
            random = new Random();
            connection = new SQLiteConnection("Data Source=Resources/pokemon.sqlite3;Version=3;");
            connection.Open();
            log = new Logger();
        }

        public Random GetRandom()
        {
            return random;
        }

        public SQLiteConnection GetDBConnection()
        {
            return connection;
        }

        public Logger GetLog()
        {
            return log;
        }
    }
}
