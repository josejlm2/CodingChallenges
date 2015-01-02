using System;
using System.Collections.Generic;
using System.IO;

namespace FileSize
{
    class FileSize
    {
        public static void Main()
        {
            try
            {
                using (StreamReader sr = new StreamReader("FileSizeInput.txt"))
                {
                    String line = sr.ReadToEnd();                  
                    Console.WriteLine(line.Length);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(e.Message);
            }

            Console.ReadLine();
        }
    }
}