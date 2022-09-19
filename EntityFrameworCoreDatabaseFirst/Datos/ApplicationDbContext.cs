using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using EntityFrameworCoreDatabaseFirst.Models;

namespace EntityFrameworCoreDatabaseFirst.Datos
{
    public partial class ApplicationDbContext : DbContext
    {

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<notas> notas { get; set; }
        public DbSet<usuario> usuarios { get; set; }
        
    }
}
