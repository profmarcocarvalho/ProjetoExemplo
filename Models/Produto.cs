using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AspMVCMasterDetailExample.Models {
    [Table("Produtos")]
    public class Produto {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }

        public int CategoriaId { get; set; }
        [ForeignKey("CategoriaId")]
        public Categoria Categoria { get; set; }
    }
}