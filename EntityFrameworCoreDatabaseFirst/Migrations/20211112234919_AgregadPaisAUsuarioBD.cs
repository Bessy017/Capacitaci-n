using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EntityFrameworCoreDatabaseFirst.Migrations
{
    public partial class AgregadPaisAUsuarioBD : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Pais",
                table: "usuario",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Pais",
                table: "usuario");
        }
    }
}
