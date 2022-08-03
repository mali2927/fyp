using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

namespace WebApplication11
{
    class Program
    {
        class FileRead
        {
            public void ReadData()
            {
                FileStream fs = new FileStream("C:/Users/ThinkPad/PycharmProjects/pythonProject7/filtered[2]", FileMode.Open, FileAccess.Read);
                StreamReader sr = new StreamReader(fs);
    
                sr.BaseStream.Seek(0, SeekOrigin.Begin);
                string str = sr.ReadLine();
                while (str != null)
                {
                    Console.WriteLine(str);
                    str = sr.ReadLine();
                }
                Console.ReadLine();
                sr.Close();
                fs.Close();
            }
        }
        static void Main(string[] args)
        {
            FileRead wr = new FileRead();
            wr.ReadData();
        }
    }
}  
