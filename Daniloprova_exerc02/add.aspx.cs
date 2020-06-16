using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Daniloprova_exerc02
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {

            MySqlCommand cmd = new MySqlCommand();



            try
            {
                

                cmd.Connection = conexao.Connection;




                cmd.CommandText = @"insert into func(
                                   nome, sexo, data_nascimento, carteira, telefone, celular, email, endereco, numero)
                                  values
                                  (@nome, @sexo, @data_nascimento, @carteira, @telefone, @celular, @email, @endereco, @numero)";

                cmd.Parameters.AddWithValue("Nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", txtSexo.Text);
                cmd.Parameters.AddWithValue("data_nascimento", txtdata_nascimento.Text);
                cmd.Parameters.AddWithValue("carteira", txtcarteira.Text);
                cmd.Parameters.AddWithValue("telefone", txttelefone.Text);
                cmd.Parameters.AddWithValue("celular", txtcelular.Text);
                cmd.Parameters.AddWithValue("email", txtemail.Text);
                cmd.Parameters.AddWithValue("endereco", txtendereco.Text);
                cmd.Parameters.AddWithValue("numero", txtnumero.Text);
             

                conexao.Conectar();
                cmd.ExecuteNonQuery();
                lblResultado.Text = "Cadastrado Com sucesso";



            }
            catch (Exception ex)
            {
                lblResultado.Text = "Falha:" + ex.Message;
            }
            finally
            {

                conexao.Desconectar();

            }

        }
    }
}