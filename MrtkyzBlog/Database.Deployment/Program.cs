using DbUp;
using System;
using System.Configuration;
using System.Globalization;
using System.IO;
using System.Threading;
using DbUp.Builder;
using DbUp.Engine;

namespace Database.Deployment
{
    class Program
    {
        static void Main()
        {
            Thread.CurrentThread.CurrentCulture = Thread.CurrentThread.CurrentUICulture = new CultureInfo("tr-TR");
            var connectionString = ConfigurationManager.ConnectionStrings["DataEntities"].ConnectionString;

            UpgradeEngineBuilder upgradeEngineBuilder = DeployChanges.To
                .SqlDatabase(connectionString)
                .WithScriptsFromFileSystem(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Scripts"))
                .LogToConsole();

            upgradeEngineBuilder.Configure(x =>
            {
                x.ScriptExecutor.ExecutionTimeoutSeconds = 30 * 60;
            });

            UpgradeEngine upgrader = upgradeEngineBuilder.Build();

            DatabaseUpgradeResult result = upgrader.PerformUpgrade();

            if (result.Successful)
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("DB Deploy Successfull !");
                Console.ResetColor();
            }
            else
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(result.Error);
                Console.ResetColor();
            }
        }
    }
}
