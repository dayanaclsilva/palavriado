using Godot;
using System;
using System.Collections.Generic;
using Godot.Collections;
using System.Linq;

public partial class Dicionario : Node
{
	#region Properties
	public Array<Palavra> Palavras { get; set; } = new Array<Palavra>();
	#endregion

	#region Constructors
	public Dicionario() { }

	#endregion

	#region Methods

	/// <summary>
	/// Prepara a mão do jogador
	/// </summary>
	public Array<Letra> PrepararMao()
	{
		// Adiciona as palavras ao dicionário
		Palavras = AdicionarPalavras();

		// Embaralha os caracteres e monta a mão do jogador
		return EmbaralharCaracteres(Palavras);
	}

	/// <summary>
	/// Adiciona as palavras ao dicionário
	/// </summary>
	public Array<Palavra> AdicionarPalavras()
	{
		Palavra palavra = new Palavra();

		// Cria uma nova palafvra e define suas propriedades
		palavra = new Palavra
		{
			Id = 1,
			Descricao = "Cafe"
		};

		// Adiciona a palavra ao dicionário
		Palavras.Add(palavra);

		// Cria uma nova palavra e define suas propriedades
		palavra = new Palavra
		{
			Id = 2,
			Descricao = "Livro"
		};

		// Adiciona a palavra ao dicionário
		Palavras.Add(palavra);

		// Cria uma nova palavra e define suas propriedades
		palavra = new Palavra
		{

			Id = 3,
			Descricao = "Janela"
		};

		// Adiciona a palavra ao dicionário
		Palavras.Add(palavra);

		return Palavras;
	}

	/// <summary>
	/// Embaralha os caracteres de uma palavra
	/// </summary>
	public Array<Letra> EmbaralharCaracteres(Array<Palavra> palavras)
	{
		Array<Letra> letras = new Array<Letra>();
		List<Letra> letrasSelecionadas = new List<Letra>();
		Random random = new Random();
		Letra letra = new Letra();

		// Para cada palavra na lista
		foreach (Palavra palavra in palavras)
		{
			char[] caracteres = null;
			// Pega os caracteres da palavra e os armazena em um array
			caracteres = palavra.Descricao.ToCharArray();

			// Para cada caractere no array de caracteres
			foreach (char caractere in caracteres)
			{
                // Define a letra e adiciona à lista de letras
                letra = new Letra
                {
                    Id = letras.Count + 1,
                    Descricao = caractere.ToString().ToUpper()
                };
                letras.Add(letra);
			}
		}

		// Embaralha as letras 
		 letrasSelecionadas = letras.OrderBy(x => random.Next()).ToList();

		return new Array<Letra>(letrasSelecionadas);
	}

	/// <summary>
	/// Retorna se uma palavra existe no dicionário
	/// </summary>
	public bool BuscarPalavra(string descricao)
	{
		List<Palavra> palavrasEncontradas = Palavras.Where(p => p.Descricao.Equals(descricao, StringComparison.OrdinalIgnoreCase)).ToList();
		return palavrasEncontradas.Any();
	}

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}

	#endregion
}
