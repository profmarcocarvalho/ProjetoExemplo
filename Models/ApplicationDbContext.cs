using Microsoft.EntityFrameworkCore;

namespace AspMVCMasterDetailExample.Models {
    public class ApplicationDbContext : DbContext {
        public DbSet<Produto> Produtos { get; set; }
        public DbSet<Categoria> Categorias { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)  : base(options) {}
    }
}